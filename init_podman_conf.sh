#!/bin/bash

# This script will change the default configuration of podman.
# NEVER call it manually. Only used when building images.

set -e

PODMAN_SOURCE_PATH=/root/podman
CONTAINER_CONF_DIR=/etc/containers

# Change the storage from overlay to vfs
STORAGE_CONF_NAME=storage.conf
STORAGE_CONF=$(find $PODMAN_SOURCE_PATH -name ${STORAGE_CONF_NAME} -print -quit)
echo "cp <= $STORAGE_CONF $CONTAINER_CONF_DIR"
cp $STORAGE_CONF $CONTAINER_CONF_DIR
sed -i 's|driver = "overlay"|driver = "vfs"|' $CONTAINER_CONF_DIR/$STORAGE_CONF_NAME

# Disable seccomp
sed -i 's|^#seccomp_profile = "/usr/share/containers/seccomp.json"|seccomp_profile = "unconfined"|' /usr/share/containers/containers.conf
