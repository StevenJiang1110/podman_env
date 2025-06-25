#!/bin/bash

set -e

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
DOCKERFILE=${SCRIPT_DIR}/Dockerfile.dev
IMAGE_NAME=asterinas/podman:0.1.0

docker build \
    -f ${DOCKERFILE} \
    -t ${IMAGE_NAME} \
    .