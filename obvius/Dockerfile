FROM debian:stable-slim

#Init apt
RUN set -x \
    && apt-get update

#Install Apache
RUN set -x \
    && apt-get install -y apache2 \
    && apt-get install -y apache2-dev

# Add mod_perl build dependencies
RUN set -x \
    && apt-get install -y libfile-spec-native-perl make gcc libperl-dev

RUN apt-get install -y libapache2-mod-apreq2 \
libapache2-request-perl \
libapache-session-perl \
libcatalyst-devel-perl \
libcatalyst-modules-perl

#Install obvius package dependencies
RUN apt-get install -y build-essential \
cpanminus \
gettext \
git \
git-flow \
libalgorithm-diff-perl \
libberkeleydb-perl \
libcaptcha-recaptcha-perl \
libclone-pp-perl \
libconvert-nls-date-format-perl \
libcrypt-smime-perl \
libdate-calc-perl \
libdatetime-format-oracle-perl \
libdatetime-perl \
libdbd-mysql-perl \
libdbd-sybase-perl \
libdbix-class-perl \
libdbix-recordset-perl \
libemail-mime-perl \
libencode-locale-perl \
libfile-cache-perl \
libhtml-fromtext-perl \
libhtml-mason-perl \
libhtml-parser-perl \
libhtml-scrubber-perl \
libhtml-tiny-perl \
libhttp-date-perl \
libhttp-message-perl \
libimage-size-perl \
libjson-perl \
liblwp-mediatypes-perl \
libmime-types-perl \
libnet-ldap-perl \
libparams-validate-perl \
librose-datetime-perl \
librose-db-object-perl \
librose-db-perl \
librose-object-perl \
libsoap-lite-perl \
libspreadsheet-writeexcel-perl \
libterm-readline-gnu-perl \
libtext-csv-perl \
libtime-clock-perl \
libtry-tiny-perl \
libunicode-string-perl \
liburi-perl \
libwebservice-solr-perl \
libwww-perl \
libxml-libxml-perl \
libxml-libxslt-perl \
libxml-parser-perl \
libxml-rss-perl \
libxml-simple-perl \
libxml-xpath-perl \
links \
perl \
perl-doc \
libgraphics-magick-perl \
poppler-utils \
software-properties-common \
perlmagick \
vim \
net-tools \
locales

#Install CPAN modules
RUN cpanm Crypt::TripleDES \
Date::ICal \
Digest::SHA1 \
MD5 \
HTML::Diff \
JSON::PP \
Locale::Messages \
Apache2::SizeLimit \
Net::IDN::Encode \
forks

#Copy obvius and ku specific conf files
COPY etc/ /etc

#Copy DBIx Patches
COPY DBIx_patches/ /usr/share/perl5/DBIx/

RUN touch /usr/share/perl5/DBIx/.obvius_recordset_patches_installed

#Install locales
COPY etc/locale.gen /etc/locale.gen
RUN locale-gen

# Clean up (NOTE: temporarily disabled for dev purposes) 
#RUN apt-get purge -y --auto-remove make gcc libperl-dev \
#    && rm -rf /var/lib/apt/lists/*

COPY ./src /var/www

ENV PERL5LIB=/var/www/www.ku.dk/perl:/var/www/obvius/perl

RUN cp /usr/share/zoneinfo/Europe/Copenhagen /etc/localtime