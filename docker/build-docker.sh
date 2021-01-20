#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-ayardopay/ayardod-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/ayardod docker/bin/
cp $BUILD_DIR/src/ayardo-cli docker/bin/
cp $BUILD_DIR/src/ayardo-tx docker/bin/
strip docker/bin/ayardod
strip docker/bin/ayardo-cli
strip docker/bin/ayardo-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
