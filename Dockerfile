# Author: Vinícius Gabriel Linden
# Date: 2023-05-02
# podman build -t vglinden/c-builder:<VERSION> .
# podman run --rm -it -u$(id -u):$(id -g) -v$(pwd):/data vglinden/c-builder

ARG ALPINE_TAG=3.17.3
FROM alpine:${ALPINE_TAG}

LABEL maintainer="Vinícius Gabriel Linden <linden@viniciuslinden.xyz>" \
      description="Simple alpine-based builder for X86 C(++) applications with \
CMake and Bash"

RUN apk update && \
    apk upgrade && \
    apk --no-cache add \
        bash git \
        clang clang-dev \
        gcc g++ \
        libc-dev \
        make cmake extra-cmake-modules && \
    cmake --version

WORKDIR /data
