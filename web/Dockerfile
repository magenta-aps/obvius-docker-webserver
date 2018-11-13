FROM debian:stretch-slim

#Install Apache
RUN set -x \
    && apt-get update \
    && apt-get install -y apache2 \
    && apt-get install -y apache2-dev 

# Add mod_perl and apreq source code
ADD http://mirrors.dotsrc.org/apache/perl/mod_perl-2.0.10.tar.gz \
    http://mirrors.dotsrc.org/apache/httpd/libapreq/libapreq2-2.13.tar.gz \
    ./

# Add mod_perl build dependencies
RUN set -x \
    && apt-get install -y libfile-spec-native-perl make gcc libperl-dev

    # Compile and install mod_perl
#RUN ln -s /usr/lib/x86_64-linux-gnu/libgdbm.so.3.0.0 /usr/lib/libgdbm.so \
#    && tar -zxvf mod_perl-2.0.10.tar.gz \
#    && rm mod_perl-2.0.10.tar.gz \
#    && cd mod_perl-2.0.10 \
#    && perl Makefile.PL MP_AP_PREFIX=/usr/include/apache2 \
#    && make \ 
#    && make install 

    # Compile and install mod_apreq
#RUN tar -zxvf libapreq2-2.13.tar.gz \
#    && cd libapreq2-2.13 \
#    && ./configure \
#    && make \
#    && make install 

#Install obvius package dependencies
RUN apt-get install -y build-essential
RUN apt-get install -y cpanminus
RUN apt-get install -y gettext
RUN apt-get install -y git
RUN apt-get install -y git-flow
RUN apt-get install -y libalgorithm-diff-perl
RUN apt-get install -y libapache2-mod-apreq2
RUN apt-get install -y libapache2-request-perl
RUN apt-get install -y libapache-session-perl
RUN apt-get install -y libberkeleydb-perl
RUN apt-get install -y libcaptcha-recaptcha-perl
RUN apt-get install -y libcatalyst-devel-perl
RUN apt-get install -y libcatalyst-modules-perl
RUN apt-get install -y libclone-pp-perl
RUN apt-get install -y libconvert-nls-date-format-perl
RUN apt-get install -y libcrypt-smime-perl
RUN apt-get install -y libdate-calc-perl
RUN apt-get install -y libdatetime-format-oracle-perl
RUN apt-get install -y libdatetime-perl
RUN apt-get install -y libdbd-mysql-perl
RUN apt-get install -y libdbd-sybase-perl
RUN apt-get install -y libdbix-class-perl
RUN apt-get install -y libdbix-recordset-perl
RUN apt-get install -y libemail-mime-perl
RUN apt-get install -y libencode-locale-perl
RUN apt-get install -y libfile-cache-perl
RUN apt-get install -y libhtml-fromtext-perl
RUN apt-get install -y libhtml-mason-perl
RUN apt-get install -y libhtml-parser-perl
RUN apt-get install -y libhtml-scrubber-perl
RUN apt-get install -y libhtml-tiny-perl
RUN apt-get install -y libhttp-date-perl
RUN apt-get install -y libhttp-message-perl
RUN apt-get install -y libimage-size-perl
RUN apt-get install -y libjson-perl
RUN apt-get install -y liblwp-mediatypes-perl
RUN apt-get install -y libmime-types-perl
RUN apt-get install -y libnet-ldap-perl
RUN apt-get install -y libparams-validate-perl
RUN apt-get install -y librose-datetime-perl
RUN apt-get install -y librose-db-object-perl
RUN apt-get install -y librose-db-perl
RUN apt-get install -y librose-object-perl
RUN apt-get install -y libsoap-lite-perl
RUN apt-get install -y libspreadsheet-writeexcel-perl
RUN apt-get install -y libterm-readline-gnu-perl
RUN apt-get install -y libtext-csv-perl
RUN apt-get install -y libtime-clock-perl
RUN apt-get install -y libtry-tiny-perl
RUN apt-get install -y libunicode-string-perl
RUN apt-get install -y liburi-perl
RUN apt-get install -y libwebservice-solr-perl
RUN apt-get install -y libwww-perl
RUN apt-get install -y libxml-libxml-perl
RUN apt-get install -y libxml-libxslt-perl
RUN apt-get install -y libxml-parser-perl
RUN apt-get install -y libxml-rss-perl
RUN apt-get install -y libxml-simple-perl
RUN apt-get install -y libxml-xpath-perl
RUN apt-get install -y links
RUN apt-get install -y perl
RUN apt-get install -y perl-doc
RUN apt-get install -y libgraphics-magick-perl
RUN apt-get install -y poppler-utils
RUN apt-get install -y ruby-activesupport
RUN apt-get install -y ruby-dev
RUN apt-get install -y software-properties-common
RUN apt-get install -y perlmagick
RUN apt-get install -y vim
RUN apt-get install -y net-tools
RUN apt-get install -y locales

 
#Install CPAN modules
RUN cpanm Crypt::TripleDES  
RUN cpanm Date::ICal
RUN cpanm Digest::SHA1  
RUN cpanm MD5  
RUN cpanm HTML::Diff  
RUN cpanm JSON::PP  
RUN cpanm Locale::Messages
RUN cpanm Apache2::SizeLimit

#Copy obvius and ku specific conf files
COPY etc/ /etc

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
RUN a2enmod ssl
RUN a2enmod access_compat
RUN a2enmod mpm_prefork 

#Enable Apache custom configuration files
RUN a2enconf obvius
RUN a2enconf log-to-syslog
RUN a2enconf actualhost-logformat

#Build internal certificate
RUN /etc/apache2/certificates/rebuild_magenta_certificate.sh

#Copy DBIx Patches
COPY DBIx_patches/ /usr/share/perl5/DBIx/

RUN touch /usr/share/perl5/DBIx/.obvius_recordset_patches_installed

#Install locales
COPY etc/locale.gen /etc/locale.gen
RUN locale-gen

#Change permmision on ignored directories:
RUN chown -R www-data /var/www/www.ku.dk/docs/upload
RUN chown www-data /var/www/www.ku.dk/var
RUN chown www-data /var/www/www.ku.dk/logs
RUN chown -R www-data /var/www/www.ku.dk/var/document_cache

# Clean up
RUN apt-get purge -y --auto-remove make gcc libperl-dev \
    && rm -rf /var/lib/apt/lists/*
    

RUN rm -f /usr/local/apache2/logs/httpd.pid
