#!/bin/bash

echo 'Entering entrypoint.sh'

echo 'Building obvius translations'

perl /var/www/obvius/bin/obvius_translations.pl sort_translations ku
perl /var/www/obvius/bin/obvius_translations.pl build ku

echo 'Waiting 10 seconds for database to spin up'
sleep 10

# Handle updates to hostnames if defined in environment variables
if [[ "x${OBVIUS_ROOT_DOMAIN}" != "x" ]]; then
    grep "${OBVIUS_ROOT_DOMAIN}" /etc/obvius/ku.conf
    if [[ $? != 0 ]]; then
        # Replace hostnames in Obvius config
        sed -i "s/.localhost.magenta.dk/.${OBVIUS_ROOT_DOMAIN}/g" "/etc/obvius/ku.conf"

        # Replace hostnames in apache setup
        sed -i "s/.localhost.magenta.dk/.${OBVIUS_ROOT_DOMAIN}/g" "/etc/apache2/sites-available/ku.conf"

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

echo 'Starting Apache'
apachectl -D FOREGROUND
