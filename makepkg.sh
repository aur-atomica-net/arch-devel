#!/bin/bash
set -e
set -x
set -o pipefail

REPO=$1
GNUPGHOME=$(pwd)/.gnupg

makepkg --force --noconfirm --syncdeps --install --nocheck --sign

repo-add ${REPO}.db.tar.gz *.pkg.tar.xz
gpg --detach-sign ${REPO}.db.tar.gz

mv ${REPO}.db.tar.gz ${REPO}.db
mv ${REPO}.db.tar.gz.sig ${REPO}.db.sig
