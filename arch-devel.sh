#!/bin/sh
set -e
set -x
set -o pipefail

pacman -Suy --noconfirm --needed base-devel git
pacman -Scc --noconfirm

# Don't need this script anymore
rm $0
