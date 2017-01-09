#!/usr/bin/env bash

set -e # Exit on first error
set -x # Debugz

##
## THIS IS MEANT TO BE RUN FROM JENKINS
##
## This is a script for pushing documentation artifacts to s3
## The artifact should have been generated in the build phase
## This image assumes it can create a container and copy the artifact
## from a pre-determined location
## Anything that needs to be excluded should
## be added to the .tarignore file
##

## TODO: Need to check if git tag exists in repo before pushing, user should confirm
##       they wish to override.  Overriding in S3 is highly discouraged.

## FOR NOW THIS ONLY SUPPORTS TAGS!!!
## We can work in a feature/ad-hoc artifact model later :-)

_S3_BUCKET=sightmachine-documentation
_AWS_PROFILE=${_S3_BUCKET}
_GIT_TAG=$(git describe)

if [[ -z "${_GIT_TAG}" ]]; then
  echo "Unable to get the version we should use for tagging"
  echo "Please make sure $(git rev-parse HEAD) is associated with an ANNOTATED tag"
  echo "and that 'git describe' returns something"
fi

mkdir -p ${_S3_BUCKET}/${_GIT_TAG}/help
tar -C ${_S3_BUCKET}/${_GIT_TAG}/help -xvzf artifacts/sightmachine-documentation-${_GIT_TAG}-artifact.tar.gz
aws --profile ${_AWS_PROFILE} s3 cp --recursive --acl public-read ${_S3_BUCKET}/${_GIT_TAG}/ s3://${_S3_BUCKET}/${_GIT_TAG}/
