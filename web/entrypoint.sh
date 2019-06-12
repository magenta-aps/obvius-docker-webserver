#!/bin/bash

echo 'Entering entrypoint.sh'

echo 'Modifying apache user'
APACHE_USER_ID="${OBVIUS_CONFIG_APACHE_USER_ID:-1000}"
APACHE_USER_NAME="${OBVIUS_CONFIG_APACHE_USER_NAME:-"www-data"}"
usermod -u $APACHE_USER_ID $APACHE_USER_NAME

echo 'Building obvius translations'

perl /var/www/obvius/bin/obvius_translations.pl sort_translations ku
perl /var/www/obvius/bin/obvius_translations.pl build ku

echo "Waiting ${WAIT_FOR_DB_TIMER} seconds for database to spin up"
sleep ${WAIT_FOR_DB_TIMER}

echo "Updating root domain"
# Handle updates to hostnames if defined in environment variables
if [[ "x${OBVIUS_ROOT_DOMAIN}" != "x" ]]; then
    grep "${OBVIUS_ROOT_DOMAIN}" /etc/obvius/ku.conf
    if [[ $? != 0 ]]; then
        # Replace hostnames in Obvius config
        sed -i "s/cms.ku.localhost.magenta.dk/${OBVIUS_HTTP_PREFIX}${OBVIUS_ROOT_DOMAIN}/g" "/etc/obvius/ku.conf"
        sed -i "s/cms.ku-ssl.localhost.magenta.dk/${OBVIUS_HTTPS_PREFIX}${OBVIUS_ROOT_DOMAIN}/g" "/etc/obvius/ku.conf"

        # Replace hostnames in apache setup
        sed -i "s/cms.ku.localhost.magenta.dk/${OBVIUS_HTTP_PREFIX}${OBVIUS_ROOT_DOMAIN}/g" "/etc/apache2/sites-available/ku.conf"
        sed -i "s/cms.ku-ssl.localhost.magenta.dk/${OBVIUS_HTTPS_PREFIX}${OBVIUS_ROOT_DOMAIN}/g" "/etc/apache2/sites-available/ku.conf"

        perl -MObvius -MObvius::Config -e '
            Obvius->new(Obvius::Config->new("ku"))->dbh->do(qq|
                update subsites2
                set domain = replace(domain, ".localhost.magenta.dk", ".$ENV{OBVIUS_ROOT_DOMAIN}")
            |)
        '

        perl -MObvius -MObvius::Config -e '
            Obvius->new(Obvius::Config->new("ku"))->dbh->do(qq|
                update subsites_secondary_domains
                set domain = replace(domain, ".localhost.magenta.dk", ".$ENV{OBVIUS_ROOT_DOMAIN}")
            |)
        '
    fi
fi

# TODO: This needs to be replaced with automatic updating from checking a timestamp file
# Rebuild hostmap files
perl /var/www/www.ku.dk/bin/update_subsite_files.pl

bash /var/conf_files/add_ignored.sh

echo 'Starting Apache'
apachectl -D FOREGROUND
