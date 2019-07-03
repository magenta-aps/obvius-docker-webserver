#!/bin/bash

set -e

# Install DBD::Sybase using custom configure-args and a hack to Makefile.PL to make it
# find libraries in lib64 instead of lib.
source /opt/app-root/etc/scl_enable
wget -qO- 'http://www.cpan.org/authors/id/M/ME/MEWP/DBD-Sybase-1.16.tar.gz' | tar xvzf -
pushd DBD-Sybase-1.16
cp Makefile.PL Makefile.PL.orig
sed -e "s/libdir           = 'lib';/libdir = 'usr\/lib64';/" Makefile.PL.orig > Makefile.PL
SYBASE=/opt/rh/rh-perl526/root perl Makefile.PL --chained=Y --threaded_libs=N --accept_test_defaults
make
make install
popd
rm -rf DBD-Sybase-1.16
