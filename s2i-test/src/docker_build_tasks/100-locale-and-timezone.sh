#!/bin/bash

set -e

localedef -c -i da_DK -f ISO-8859-1 da_DK
cp /usr/share/zoneinfo/Europe/Copenhagen /etc/localtime
