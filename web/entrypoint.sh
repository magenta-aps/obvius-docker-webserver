echo 'Entering entrypoint.sh'

echo 'Building obvius translations'

perl /var/www/obvius/bin/obvius_translations.pl sort_translations ku
perl /var/www/obvius/bin/obvius_translations.pl build ku

echo 'Waiting 10 seconds for database to spin up'
sleep 10

echo 'Starting Apache'
apachectl -D FOREGROUND
