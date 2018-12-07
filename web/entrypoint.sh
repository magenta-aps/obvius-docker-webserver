echo 'Entering entrypoint.sh'

echo 'Building obvius translations'

# TODO: This needs to be replaced with automatic updating from checking a timestamp file
# Rebuild hostmap files
perl /var/www/www.ku.dk/bin/update_subsite_files.pl

perl /var/www/obvius/bin/obvius_translations.pl sort_translations ku
perl /var/www/obvius/bin/obvius_translations.pl build ku

echo 'Waiting 10 seconds for database to spin up'
sleep 10

echo 'Starting Apache'
apachectl -D FOREGROUND
