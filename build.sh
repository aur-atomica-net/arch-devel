#!/bin/sh
set -e
set -x
set -o pipefail

IMAGE_NAME="atomica/arch-devel"

docker build --force-rm --tag="${IMAGE_NAME}:latest" .
