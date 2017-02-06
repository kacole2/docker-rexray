#!/bin/bash

set -ex
DOCKER_REPO="cduchesne"
RR_VERSION="0.7.0"
	
if [ ! -f ./rexray-Linux-x86_64-${RR_VERSION}.tar.gz ]; then
	curl -OL https://dl.bintray.com/emccode/rexray/stable/${RR_VERSION}/rexray-Linux-x86_64-${RR_VERSION}.tar.gz
fi

tar xf rexray-Linux-x86_64-${RR_VERSION}.tar.gz 

docker build -t "${DOCKER_REPO}"/rexray .

rm rexray
