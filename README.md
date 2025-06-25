# About

This repository contains several scripts demonstrating how to build [Podman](https://docs.podman.io/en/latest/) from source code, 
and subsequently run a container using Podman.

Typically, our goal is to build a Podman binary with minimal functionalities. In other words, we disable all features that can be turned off during compilation and at runtime, such as selinux and seccomp-related functionalities.

This approach makes the built version of Podman suitable for operating systems that lack some features found in more mature Linux distributions, such as [Asterinas](https://github.com/asterinas/asterinas). These OSes can use the simplified Podman as a first step toward supporting modern containers.

# How to use

1. Run `./build_image.sh`.

This script builds a Docker image containing Podman and all required dependencies, 
including configuration files needed by Podman.

2. Run `./run_container.sh`.

This script starts a container from the prebuilt image.

3. Modify the command in `strace_podman.sh` as needed, and then run `strace_podman.sh`.

You can trace all syscalls that running a Podman container involves.