#!/usr/bin/env bash
##
## Deploy tar.gz based artifact to remote web server
##

#set -x
set -e

##
## Global
##

## TODO: Refactor this to gather a list of tenants via curl or something?
tenants=(cs ft pc sz t2 nike fiat vulcan inteva martinrea gsk shaw)
production_frontends=(mt-frontend-4201 mt-frontend-2201 mt-frontend-1102)

##
## Private Globals
_TARGET=$1
_ALLOWED_TARGETS="stage2 stage3 stage4 stage5 stage6 production"
_SCRIPT_DIR=$(dirname $0)
_ARTIFACTS_DIR=${_SCRIPT_DIR}/../artifacts
_ARTIFACT=$(ls -1tr ${_ARTIFACTS_DIR}/*.tar.gz | tail -n1)
_ARTIFACT_FILE=$(basename ${_ARTIFACT})
_ARTIFACT_NAME=$(echo ${_ARTIFACT_FILE} | sed -e 's/.tar.gz//g')

if [[ -z "${_TARGET}" || -z `echo ${_ALLOWED_TARGETS} | grep ${_TARGET}` ]]; then
  echo "Please specify one of the following target environmnts"
  echo ""
  echo "${_ALLOWED_TARGETS}"
  echo ""
  exit 255
fi

_deploy_artifact() {
  _HOST=$1

  _DEPLOY_DIR="/home/sm/Code/${_ARTIFACT_NAME}"
  _HELP_DIR="/home/sm/Code/help"
  _SUDO_CMD=""

  if [[ "${USER}" != "sm" ]]; then
    _SUDO_CMD="sudo -u sm"
  fi 

  echo "Deploying ${_ARTIFACT_NAME} to ${_HOST}/"
  if [[ -z "${_ARTIFACT_NAME}" ]]; then
     echo "Unable to determine artifact name :-(... BAILING!!!"
     exit 1
  fi

  # Jenkins should enforce a singular entity here, the name of the tar.gz is the git sha.
  echo "Copying artifact ${_ARTIFACT} ${_HOST}:/tmp/"
  scp ${_ARTIFACT} ${_HOST}:/tmp/${_ARTIFACT_FILE}

  echo "Unpacking and deploying"
  echo "mkdir /tmp/${_ARTIFACT_NAME} \
       && echo Unpacking && tar -C /tmp/${_ARTIFACT_NAME} -xvzf /tmp/${_ARTIFACT_FILE} \
       && echo Rsync && ${_SUDO_CMD} rsync -av --delete /tmp/${_ARTIFACT_NAME}/ ${_HELP_DIR}/ \
       && echo Cleaning Up && rm -rf /tmp/sightmachine-documentation* \
       && echo Completed" | ssh ${_HOST}
  return 0
}

function _validate_deploy_was_successful() {
  _HELP_URL=$1

  _CURL_OUTPUT=$(curl -L -s -o /dev/null -w "%{http_code}" ${_HELP_URL})
  echo ${_CURL_OUTPUT}
  if [[ "${_CURL_OUTPUT}" == "200" ]]; then
    echo "SUCCESS!!!!!!"
  else
    echo "OH NO!!!! HTTP STATUS ${_CURL_OUTPUT} FOR ${_HELP_URL}"
    exit 1
  fi

  return 0
}

echo "Deploying to ${_TARGET}"
if [[ ${_TARGET} == "stage2" ]]; then
  _deploy_artifact qa-stage-4202.int.sightmachine.com
  _validate_deploy_was_successful http://cs.stage.int.sightmachine.com/help/index.html
elif [[ ${_TARGET} == "stage3" ]]; then
  _deploy_artifact qa-stage-4203.int.sightmachine.com
  _validate_deploy_was_successful http://cs.stage3.int.sightmachine.com/help/index.html
elif [[ ${_TARGET} == "stage4" ]]; then
  _deploy_artifact qa-stage-4204.int.sightmachine.com
  _validate_deploy_was_successful http://cs.stage4.int.sightmachine.com/help/index.html
elif [[ ${_TARGET} == "stage5" ]]; then
  _deploy_artifact qa-stage-4205.int.sightmachine.com
  _validate_deploy_was_successful http://cs.stage5.int.sightmachine.com/help/index.html
elif [[ ${_TARGET} == "stage6" ]]; then
  _deploy_artifact qa-stage-4206.int.sightmachine.com
  _validate_deploy_was_successful http://cs.stage6.int.sightmachine.com/help/index.html
elif [[ ${_TARGET} == "production" ]]; then
  for i in ${production_frontends[@]}; do
    _host="${i}.int.sightmachine.com"
    _deploy_artifact ${_host}
  done

  for tenant in ${tenants[@]}; do 
    _help_url="http://${tenant}.sightmachine.com/help/index.html"
    echo "Validating Tenant Help URL: ${_help_url}"
    _validate_deploy_was_successful ${_help_url}
  done
else
  echo "How did you get here?"
  exit 1
fi

exit 0
