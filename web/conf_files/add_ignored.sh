#!/bin/bash
cd /var/www/

#mkdir -p www.ku.dk/docs/upload
mkdir -p www.ku.dk/var 
#mkdir -p www.ku.dk/logs
mkdir -p www.ku.dk/var/document_cache

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
