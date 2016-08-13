#!/usr/bin/env bash
set -x
set -e

##
## Super simple docker based build procedure for rendering gitbook documentation.
##
##   If any commands fail, this script will exit.  So it's sparse on nil guards.
##
##   1. Removes any existing rendered documentation (gitbooks)
##   2. Uses docker to render/build the book
##   3. Creates a tar.gz of the rendered book
##   4. Pushes that tar.gz to S3
##
_SCRIPT_DIR=$(dirname $0)
_GIT_SHA=$(git rev-parse HEAD)

cd ${_SCRIPT_DIR}/..
test -d artifact && rm -rf artifact
test -d _book && rm -rf _book
docker-compose run --rm gitbook gitbook build
sudo chown -R jenkins:jenkins _book #OMG
install -d artifact
tar -cvzf artifact/sightmachine-documentation-${_GIT_SHA}.tar.gz -C _book .
cd -
