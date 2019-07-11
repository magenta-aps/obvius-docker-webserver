#!/bin/bash

set -e

# This script will be run both when building the docker image
# and before starting the container. This will ensure that relevant config
# files exist even if /var/www/www.ku.dk/local gets bind mounted to the host.

# Make sure /var/www/www.ku.dk/local exists
if [[ ! -e "/var/www/www.ku.dk/local/conf" ]]; then
    mkdir -p "/var/www/www.ku.dk/local/conf"
fi

# Copy some default files
for x in \
    apache-010-obvius.conf \
    apache-020-obvius-website.conf \
    httpd.conf \
    preload_obvius_modules.pl \
    rewriter_script_wrapper.sh \
; do
    if [[ ! -e "/var/www/www.ku.dk/local/conf/${x}" ]]; then
        cp "/var/conf_files/${x}" "/var/www/www.ku.dk/local/conf/${x}"
    fi
done

# Copy original ku.conf to local/conf
if [[ ! -e /var/www/www.ku.dk/local/conf/etc_obvius_ku.conf ]]; then
    if [[ -e /etc/obvius/ku.conf.orig ]]; then
        cp /etc/obvius/ku.conf.orig \
           /var/www/www.ku.dk/local/conf/etc_obvius_ku.conf
    elif [[ -e /etc/obvius/ku.conf ]]; then
        cp /etc/obvius/ku.conf \
           /var/www/www.ku.dk/local/conf/etc_obvius_ku.conf
    fi
fi

# Create symlink from /etc/obvius/ku.conf to local/conf config-file.
if [[ ! -e /etc/obvius/ku.conf.orig ]]; then
    mv /etc/obvius/ku.conf /etc/obvius/ku.conf.orig
    ln -s /var/www/www.ku.dk/local/conf/etc_obvius_ku.conf /etc/obvius/ku.conf
fi

# Make sure we enable netscaler cache, as it will otherwise default to the
# mysql / file based one
grep use_netscaler_cache /var/www/www.ku.dk/local/conf/etc_obvius_ku.conf > /dev/null ||
    echo "use_netscaler_cache = 1" >> /var/www/www.ku.dk/local/conf/etc_obvius_ku.conf

# Move away old httpd.conf and replace with symlink to the one in
# /var/www/www.ku.dk/local/conf
if [[ ! -e /opt/rh/httpd24/root/etc/httpd/conf/httpd.conf.orig ]]; then
    mv /opt/rh/httpd24/root/etc/httpd/conf/httpd.conf \
       /opt/rh/httpd24/root/etc/httpd/conf/httpd.conf.orig
    ln -s /var/www/www.ku.dk/local/conf/httpd.conf \
          /opt/rh/httpd24/root/etc/httpd/conf/httpd.conf
fi

# Add obvius-preload and website configuration to apache
if [[ ! -e /opt/rh/httpd24/root/etc/httpd/conf.d/zz-010-obvius.conf ]]; then
    ln -s /var/www/www.ku.dk/local/conf/apache-010-obvius.conf \
        /opt/rh/httpd24/root/etc/httpd/conf.d/zz-010-obvius.conf
fi
if [[ ! -e /opt/rh/httpd24/root/etc/httpd/conf.d/zz-020-obvius-website.conf ]]; then
    ln -s /var/www/www.ku.dk/local/conf/apache-020-obvius-website.conf \
        /opt/rh/httpd24/root/etc/httpd/conf.d/zz-020-obvius-website.conf
fi

# Make a wrapper around rewriter.pl so it runs in the right perl environment
perl -p -i -e 's{prg:/var/www/www.ku.dk/conf/rewriter.pl}{prg:/var/www/www.ku.dk/local/conf/rewriter_script_wrapper.sh}' /var/www/www.ku.dk/conf/rewriter.conf
chmod +x /var/www/www.ku.dk/local/conf/rewriter_script_wrapper.sh
