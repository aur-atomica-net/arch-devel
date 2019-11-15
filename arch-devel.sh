#!/bin/sh
set -e
set -x
set -o pipefail

echo 'Defaults env_keep += "http_proxy https_proxy ftp_proxy"' | sudo tee --append /etc/sudoers > /dev/null

pacman --sync --refresh --noconfirm --needed archlinux-keyring
pacman --sync --sysupgrade --noconfirm --needed base base-devel git ccache linux
pacman -Scc --noconfirm

# Don't need this script anymore
rm $0
