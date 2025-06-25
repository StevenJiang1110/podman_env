#!/bin/bash

LOG_FILE=podman_hello_world.log
COMMAND="podman run hello-world"

strace -f --decode-pids=comm -o ${LOG_FILE} ${COMMAND}