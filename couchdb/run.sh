#!/bin/bash

source .env

./stop.sh

if [ -z "$1" ]; then
	MODE=-d
else
	MODE=-it
fi 

docker container run ${RUN_OPTS} ${CONTAINER_NAME} ${MODE} ${NETWORK} ${PORT_MAP} ${VOL_MAP} ${REGISTRY}${IMAGE}${TAG} $@

./status.sh