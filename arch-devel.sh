#!/bin/sh
set -e
set -x
set -o pipefail

pacman -Suy --noconfirm base-devel git

# Should allow for packages to verify sources via GPG signatures
mkdir -p /home/code_executor/.gnupg
echo 'keyserver hkp://pool.sks-keyservers.net' > /home/code_executor/.gnupg/gpg.conf
echo 'keyserver-options auto-key-retrieve' >> /home/code_executor/.gnupg/gpg.conf
chown -R code_executor:code_executor /home/code_executor

# Don't need this script anymore
rm $0
