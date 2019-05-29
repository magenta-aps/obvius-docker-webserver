#!/bin/bash
cd /var/www/

test -d /var/www/www.ku.dk/var && rm -rf /var/www/www.ku.dk/var

if [[ ! -e /var/www/www.ku.dk/var ]]; then
    echo "Creating var directory in /var/obvius_var_files"
    mkdir -p /var/obvius_var_files
    echo "Symlinking /var/www/www.ku.dk/var to /var/obvius_var_files"
    ln -s /var/obvius_var_files /var/www/www.ku.dk/var
fi

test -e www.ku.dk/var/document_cache || mkdir -p www.ku.dk/var/document_cache

cd www.ku.dk/docs
rm cache
ln -s ../var/document_cache cache
cd ../../

#Add ignored conf files
cp ../conf_files/tripleDES.txt www.ku.dk/conf/tripleDES.txt

chown -R www-data www.ku.dk/docs/upload
chown www-data www.ku.dk/var/
chown -R www-data www.ku.dk/logs
chown -R www-data www.ku.dk/var/document_cache
