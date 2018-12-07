FROM obvius:latest

#Install Apache
RUN set -x \
    && apt-get update \
    && apt-get install -y apache2 \
    && apt-get install -y apache2-dev 

# Add mod_perl build dependencies
RUN set -x \
    && apt-get install -y libfile-spec-native-perl make gcc libperl-dev

RUN apt-get install -y libapache2-mod-apreq2
RUN apt-get install -y libapache2-request-perl
RUN apt-get install -y libapache-session-perl
RUN apt-get install -y libcatalyst-devel-perl
RUN apt-get install -y libcatalyst-modules-perl

# Enable KU site in apache config
RUN a2ensite ku

#Disable conflicting Apache Module
RUN a2dismod mpm_event

#Enable Apache Modules
RUN a2enmod apreq2
RUN a2enmod expires 
RUN a2enmod headers 
RUN a2enmod proxy 
RUN a2enmod proxy_http 
RUN a2enmod proxy_connect
RUN a2enmod rewrite
RUN a2enmod access_compat
RUN a2enmod mpm_prefork
RUN a2enmod perl

ADD etc/apache2 /etc/apache2

#Enable Apache custom configuration files
RUN a2enconf obvius
RUN a2enconf actualhost-logformat

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY full_import_json.pl /full_import_json.pl


# Clean up
RUN apt-get purge -y --auto-remove make gcc libperl-dev \
    && rm -rf /var/lib/apt/lists/*

RUN rm -f /usr/local/apache2/logs/httpd.pid
