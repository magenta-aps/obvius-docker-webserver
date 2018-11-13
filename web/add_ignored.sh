mkdir -p volumes/www.ku.dk/docs/upload
mkdir -p volumes/www.ku.dk/var 
mkdir -p volumes/www.ku.dk/logs 
mkdir -p volumes/www.ku.dk/var/document_cache

ln -s volumes/www.ku.dk/var/document_cache volumes/www.ku.dk/docs/cache

#Add ignored conf files
cp ./conf_files/hostmap.conf volumes/www.ku.dk/conf/hostmap.conf
cp ./conf_files/tripleDES.txt volumes/www.ku.dk/conf/tripleDES.txt
cp ./conf_files/names.conf volumes/www.ku.dk/conf/names.conf
cp ./conf_files/https_hostmap.conf volumes/www.ku.dk/var/https_hostmap.conf

