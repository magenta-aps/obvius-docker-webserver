echo 'Entering entrypoint.sh'

echo 'Building obvius translations'

perl /var/www/obvius/bin/obvius_translations.pl sort_translations ku
perl /var/www/obvius/bin/obvius_translations.pl build ku

touch /var/www/dummyfile
tail -f /var/www/dummyfile
