#!/bin/sh
set -e
set -x
set -o pipefail

pacman -Suy --noconfirm base-devel git

# Don't need this script anymore
rm $0
