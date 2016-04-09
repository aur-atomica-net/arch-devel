#!/bin/sh
set -e
set -x
set -o pipefail

IMAGE_NAME="atomica/arch-devel"

docker build --build-env http_proxy="${http_proxy}" --build-env https_proxy="${https_proxy}" --force-rm --tag="${IMAGE_NAME}:latest" .
