#!/bin/sh
set -e
set -x
set -o pipefail

docker build --force-rm --tag="arch-devel:latest" .
