#!/usr/bin/env zsh

##
## Super simple docker based build procedure
##

docker build -t gitbook:local .
docker run -t -i --rm -v "$PWD":/gitbook gitbook:local gitbook build
