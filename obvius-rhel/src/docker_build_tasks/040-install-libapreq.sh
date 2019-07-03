#!/bin/bash

set -e

export CPATH=/opt/rh/rh-perl526/root/usr/include/httpd
source /opt/app-root/etc/scl_enable

# This needs to be re-installed for some reason, the version from cpanfile doesn't work?
cpanm ExtUtils::XSBuilder::ParseSource

wget -qO- http://mirrors.dotsrc.org/apache//httpd/libapreq/libapreq2-2.13.tar.gz | tar xvzf -
pushd libapreq2-2.13
./configure --libdir=/opt/rh/rh-perl526/root/usr/lib64 --enable-perl-glue --with-apache2-apxs="/opt/rh/httpd24/root/usr/bin/apxs" --with-perl="/opt/rh/rh-perl526/root/usr/bin/perl"
make
make install
popd
rm -rf ./libapreq2-2.13
