#!/bin/bash

echo 'Entering entrypoint.sh'

# Call setup_config_files.sh to ensure configuration files are in place
/bin/bash /var/conf_files/setup_config_files.sh

if [[ -z "${OBVIUS_LOGNAME}" ]]; then
    OBVIUS_LOGNAME=`hostname`
    if [[ -z "${OBVIUS_LOGNAME}" ]]; then
        OBVIUS_LOGNAME="default"
    fi
    export OBVIUS_LOGNAME
fi

if [[ -z "${APACHE_SERVER_ADMIN}" ]]; then
    APACHE_SERVER_ADMIN="KOM-support@adm.ku.dk"
    export APACHE_SERVER_ADMIN
fi

echo 'Building obvius translations'

perl /var/www/obvius/bin/obvius_translations.pl sort_translations ku
perl /var/www/obvius/bin/obvius_translations.pl build ku

if [[ -z "${WAIT_FOR_DB_TIMER}" ]]; then
    WAIT_FOR_DB_TIMER=10
fi

echo -n "Waiting up to ${WAIT_FOR_DB_TIMER} seconds for database to spin up: "
for x in $(seq 1 ${WAIT_FOR_DB_TIMER}); do
    echo -n "$x "
    perl -MObvius::Config -MDBI -e '
        my $c = Obvius::Config->new("ku");
        DBI->connect(
            $c->param("dsn"),
            $c->param("normal_db_login"),
            $c->param("normal_db_passwd"),
        ) or die "connection failed";
    ' 2>/dev/null && break;
    sleep 1
done
echo "... done!"

echo "Updating root domain"
# Handle updates to hostnames if defined in environment variables
if [[ "x${OBVIUS_ROOT_DOMAIN}" != "x" ]]; then
    grep "${OBVIUS_ROOT_DOMAIN}" /etc/obvius/ku.conf
    if [[ $? != 0 ]]; then
        # Replace hostnames in Obvius config
        sed -i "s/cms.ku.localhost.magenta.dk/${OBVIUS_HTTP_PREFIX}${OBVIUS_ROOT_DOMAIN}/g" "/etc/obvius/ku.conf"
        sed -i "s/cms.ku-ssl.localhost.magenta.dk/${OBVIUS_HTTPS_PREFIX}${OBVIUS_ROOT_DOMAIN}/g" "/etc/obvius/ku.conf"

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

# Once OBVIUS_ROOT_DOMAIN has been checked, set a default that can be used
# in apache configurations
if [[ -z "${OBVIUS_ROOT_DOMAIN}" ]]; then
    OBVIUS_ROOT_DOMAIN="localhost.magenta.dk"
    export OBVIUS_ROOT_DOMAIN
fi

# TODO: This needs to be replaced with automatic updating from checking a timestamp file
# Rebuild hostmap files
perl /var/www/www.ku.dk/bin/update_subsite_files.pl

if [[ ! -e /var/www/www.ku.dk/var/document_cache ]]; then
    mkdir -pv /var/www/www.ku.dk/var/document_cache
fi

if [[ ! -e /var/www/www.ku.dk/docs/cache ]]; then
    ln -s ../var/document_cache /var/www/www.ku.dk/docs/cache
fi

#Add ignored conf files
if [[ ! -e /var/www/www.ku.dk/conf/tripleDES.txt ]]; then
    cp /var/conf_files/tripleDES.txt /var/www/www.ku.dk/conf/tripleDES.txt
fi

# Make sure log directory exists
if [[ ! -d "/var/www/www.ku.dk/logs/${OBVIUS_LOGNAME}" ]]; then
    mkdir -p "/var/www/www.ku.dk/logs/${OBVIUS_LOGNAME}"
fi

exec "$@"
