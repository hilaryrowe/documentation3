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
_ARTIFACT=$(ls -1tr ${_ARTIFACTS_DIR}/*.tar.gz | tail -n1)
_ARTIFACT_FILE=$(basename ${_ARTIFACT})
_ARTIFACT_NAME=$(echo ${_ARTIFACT_FILE} | sed -e 's/.tar.gz//g')

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

  _DEPLOY_DIR="/home/sm/Code/${_ARTIFACT_NAME}"
  _HELP_SYMLINK_DIR="/home/sm/Code/help"
  _SUDO_CMD="sudo -u sm"

  echo "Deploying ${_ARTIFACT_NAME} to ${_HOST}/"
  if [[ -z "${_ARTIFACT_NAME}" ]]; then
     echo "Unable to determine artifact name :-(... BAILING!!!"
     exit 1
  fi

  # Jenkins should enforce a singular entity here, the name of the tar.gz is the git sha.
  echo "Copying artifact ${_ARTIFACT} ${_HOST}:/tmp/"
  scp -i ${_KEY} ${_ARTIFACT} ${_HOST}:/tmp/${_ARTIFACT_FILE}

  echo "Unpacking and deploying"
  echo "${_SUDO_CMD} mkdir ${_DEPLOY_DIR} \
       && ${_SUDO_CMD} tar -C ${_DEPLOY_DIR} -xvzf /tmp/${_ARTIFACT_FILE} \
       && ${_SUDO_CMD} ln -sf ${_DEPLOY_DIR} ${_HELP_SYMLINK_DIR} \ 
       && rm /tmp/${_ARTIFACT_FILE}" | ssh -i ${_KEY} ${_HOST}

  _CURL_OUTPUT=$(curl -L -s -o /dev/null -w "%{http_code}" http://localhost/help/index.html)
  if [[ "${_CURL_OUTPUT}" == "200" ]]; then
    echo "SUCCESS!!!!!!"
  else
    echo "OH NO!!!! HTTP STATUS ${_CURL_OUTPUT}"
    exit 1
  fi
}

if [[ ${_TARGET} == "stage2" ]]; then
  echo "Deploying to stage2"   
  _deploy_artifact ubuntu@qa-stage-4202.int.sightmachine.com ~/.ssh/stage2
elif [[ ${_TARGET} == "production" ]]; then
  echo "Deploying to production"
else
  echo "How did you get here?"
fi
