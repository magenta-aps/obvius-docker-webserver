FROM registry.access.redhat.com/rhscl/perl-526-rhel7:latest

USER root
COPY ./search-disabled-repos.conf /etc/yum/pluginconf.d/search-disabled-repos.conf
RUN wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    rpm -ivh epel-release-latest-7.noarch.rpm && \
    yum update -y && \
    yum install awstats httpd -y && \
    yum clean all

# Disabled because MaxMind no longer supports old GeoIP data - will need workaround!
#RUN mkdir -p /opt/GeoIP && \
#    curl -L https://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz \
#        | gunzip -c - > /opt/GeoIP/GeoIP.dat && \
#    curl -L https://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz \
#        | gunzip -c - > /opt/GeoIP/GeoLiteCity.dat

RUN useradd -M -d /var/lib/awstats awstats && \
    chown awstats:awstats /var/lib/awstats /etc/awstats /run/httpd && \
    bash -O extglob -c 'rm /etc/awstats/!(awstats.model.conf)'

# Log to stdout/stderr, copied from
# https://github.com/docker-library/httpd/blob/0e4a0b59e1f4e2a5a14ca197516beb2d4df1ffb8/2.4/alpine/Dockerfile#L78
RUN \
    sed -i "s/Require local/Require all granted/" /etc/httpd/conf.d/awstats.conf && \
    sed -ri \
        -e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' \
        -e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' \
        -e 's!^(\s*Listen)\s+\S+!\1 8080!g' \
        /etc/httpd/conf/httpd.conf
COPY entrypoint.pl /
COPY welcome.conf /etc/httpd/conf.d/
RUN chmod 777 /etc/httpd/conf.d/welcome.conf
USER awstats

EXPOSE 8080

# Awstats database
VOLUME ["/var/lib/awstats/"]

ENTRYPOINT ["/entrypoint.pl"]
