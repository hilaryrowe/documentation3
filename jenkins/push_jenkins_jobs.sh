#!/usr/bin/env bash

_SCRIPT_DIR=$(dirname $0)
JENKINS_USER=sightmachine_documentation

if [[ -z "${JENKINS_PASSWORD}" ]]; then
  echo "Please set JENKINS_PASSWORD and run again"
  exit 255
fi

jenkins-jobs --user ${JENKINS_USER} --password ${JENKINS_PASSWORD} --conf ${_SCRIPT_DIR}/etc/jenkins_int_sightmachine_com.cfg $@ definitions
