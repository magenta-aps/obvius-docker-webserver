#!/bin/bash

set -e

# Install ImageMagick from source along with its perl-modules
source /opt/app-root/etc/scl_enable
wget -qO- 'https://imagemagick.org/download/ImageMagick.tar.gz' | tar xvzf -
pushd ImageMagick-*
./configure --prefix=/opt/rh/rh-perl526/root --libdir=/opt/rh/rh-perl526/root/usr/lib64 --with-perl
make
make install
popd
rm -rf ./ImageMagick-*
