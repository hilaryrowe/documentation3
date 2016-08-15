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
##
_SCRIPT_DIR=$(dirname $0)
_GIT_SHA=$(git rev-parse HEAD)

create_temporary_dirs() {
  echo "Prepping workspace"
  test -d artifacts && rm -rf artifacts
  test -d _book && rm -rf _book
  return 0
}

build() {
  echo "Building Artifact"
  sudo docker-compose run --rm gitbook gitbook build
  sudo chown -R jenkins:jenkins _book #OMG
  return 0
}

archive() {
  echo "Archiving"
  install -d artifacts
  tar -cvzf artifacts/sightmachine-documentation-${_GIT_SHA}.tar.gz -C _book .
  return 0
}

##
## Main
##
cd ${_SCRIPT_DIR}/..
create_temporary_dirs
build
archive
cd -

return 0
