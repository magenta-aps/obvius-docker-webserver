#!/bin/bash

set -e

source /opt/app-root/etc/scl_enable
wget -qO- ftp://ftp.freetds.org/pub/freetds/stable/freetds-1.1.6.tar.gz | tar xvzf -
pushd freetds-1.1.6
./configure --prefix=/opt/rh/rh-perl526/root --libdir=/opt/rh/rh-perl526/root/usr/lib64
make
make install
popd
rm -rf ./freetds-1.1.6
