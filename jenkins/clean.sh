#!/usr/bin/env bash

set -x # Debug

_SCRIPT_DIR=$(dirname $0)

if [[ ! -e ${_SCRIPT_DIR}/clean.sh ]]; then
  echo "We're not able to find the script dir :-(  Quitting!"
  exit 255
fi

rm -f  ${_SCRIPT_DIR}/../artifacts/sightmachine-documentation*.tar.gz
rm -rf ${_SCRIPT_DIR}/../sightmachine-documentation

exit 0
