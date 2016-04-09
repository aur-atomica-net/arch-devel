#!/bin/sh
set -e
set -x
set -o pipefail

IMAGE_NAME="atomica/arch-devel"

docker build --build-arg http_proxy="${http_proxy}" --build-arg https_proxy="${https_proxy}" --force-rm --tag="${IMAGE_NAME}:latest" .

# Push to registry if configured
if [ ! -z "${DOCKER_REGISTRY}" ]; then
    docker login --username=${DOCKER_USER} --password=${DOCKER_PASS} --email=${DOCKER_EMAIL} ${DOCKER_REGISTRY}
    docker tag "${IMAGE_NAME}:latest" "${DOCKER_REGISTRY}/${IMAGE_NAME}:latest"
    docker push "${DOCKER_REGISTRY}/${IMAGE_NAME}:latest"
fi
