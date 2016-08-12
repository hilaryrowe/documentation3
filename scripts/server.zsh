#!/usr/bin/env zsh

##
## Super simple docker based build procedure
##

docker build -t gitbook:local .
docker run -t -i --rm -v "$PWD":/gitbook -p 4000:4000 gitbook:local gitbook serve
