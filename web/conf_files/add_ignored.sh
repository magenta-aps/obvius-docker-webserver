#!/bin/bash
cd /var/www/

mkdir -pv /var/www/www.ku.dk/var/document_cache

cd www.ku.dk/docs
ln -s ../var/document_cache cache
cd ../../

#Add ignored conf files
cp ../conf_files/tripleDES.txt www.ku.dk/conf/tripleDES.txt

chown -R www-data /var/www/www.ku.dk/docs
chown www-data www.ku.dk/var/
#chown -R www-data /var/www/www.ku.dk/var/document_cache
