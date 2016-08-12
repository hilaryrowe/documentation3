#!/usr/bin/env bash

set -x 
set -e 

##
## Super simple docker based build procedure
##
_SCRIPT_DIR=$(dirname $0)

cd ${_SCRIPT_DIR}/..
docker-compose run --rm gitbook gitbook build
cd -
