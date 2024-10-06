#!/bin/bash
set -e

CWD=$(cd $(dirname $0); pwd)

REGISTRY=${REGISTRY:-ghcr.io/4psireal2/llm}


IMAGE=${REGISTRY}/jobs-n-tasks:${RELEASE:-local}
BASE_VERSION="3.12.7-slim"
echo $BASE_VERSION

echo Building $IMAGE
docker build \
    --force-rm \
    --rm=true \
    -f "$CWD/Dockerfile" \
    --platform linux/amd64 \
    --build-arg BASE_VERSION=$BASE_VERSION \
    -t $IMAGE \
    "$CWD/.."