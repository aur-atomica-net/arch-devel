#!/bin/sh
set -e
set -x
set -o pipefail

pacman --sync --refresh --noconfirm archlinux-keyring
pacman --sync --sysupgrade --noconfirm --needed base base-devel git ccache
pacman -Scc --noconfirm

# Don't need this script anymore
rm $0
