#!/bin/bash

set -e

source /opt/app-root/etc/scl_enable
cpanm -n Apache2::FakeRequest SOAP::Lite BerkeleyDB
