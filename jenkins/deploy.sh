#!/usr/bin/env bash
##
## Deploy tar.gz based artifact to remote web server
##

#set -x
set -e

##
## Private Globals
_TARGET=$1
_ALLOWED_TARGETS="stage2 production"
_SCRIPT_DIR=$(dirname $0)
_ARTIFACTS_DIR=${_SCRIPT_DIR}/../artifacts

if [[ -z "${_TARGET}" || -z `echo ${_ALLOWED_TARGETS} | grep ${_TARGET}` ]]; then
  echo "Please specify one of the following target environmnts"
  echo ""
  echo "  stage2"
  echo "  production"
  echo ""
  exit 255
fi

_deploy_artifact() {
  _HOST=$1
  _KEY=$2

  _ARTIFACT=$(ls -1tr ${_ARTIFACTS_DIR}/*.tar.gz | tail -n1)
  # Jenkins should enforce a singular entity here, the name of the tar.gz is the git sha.
  scp ${_ARTIFACT} -i ${_KEY} ${_HOST}:/tmp/
  ssh -i ${_KEY} ${_HOST} "echo hey"
}

if [[ ${_TARGET} == "stage2" ]]; then
  echo "Deploying to stage2"   
  _deploy_artifact ubuntu@qa-stage-4202.int.sightmachine.com ~/.ssh/stage2
elif [[ ${_TARGET} == "production" ]]; then
  echo "Deploying to production"
else
  echo "How did you get here?"
fi
