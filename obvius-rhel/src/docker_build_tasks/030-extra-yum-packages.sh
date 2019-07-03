#!/bin/bash

set -e

yum install -y \
    httpd24-scldevel \
    httpd24-httpd-devel \
    rh-perl526-mod_perl-devel \
    openssl \
    rh-perl526-perl-DBI \
    rh-perl526-perl-DBD-MySQL
