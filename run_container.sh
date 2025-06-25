#!/bin/bash

set -e

IMAGE_NAME=asterinas/podman:0.1.0
CONTAINER_NAME=jianfeng-podman

docker run -it --privileged --rm --network=host --name=${CONTAINER_NAME} -v /home/jianfeng/podman_env:/root/podman_env ${IMAGE_NAME}