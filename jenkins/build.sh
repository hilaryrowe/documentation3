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
_GIT_TAG=$(git describe)

_create_temporary_dirs() {
  echo "Prepping workspace"
  test -d artifacts && rm -rf artifacts
  test -d _book && rm -rf _book
  return 0
}

_build() {
  echo "Building Artifact"
  docker-compose rm -f
  docker-compose run --rm gitbook gitbook build
  sudo chown -R jenkins:jenkins _book #OMG
  return 0
}

_archive() {
  echo "Archiving"
  install -d artifacts
  pushd _book && tar -cvzf ../artifacts/sightmachine-documentation-${_GIT_TAG}-artifact.tar.gz . && popd 
  return 0
}

##
## Main
##
cd ${_SCRIPT_DIR}/..

_create_temporary_dirs
_build
_archive

cd -

exit 0
