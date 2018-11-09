FROM debian:stretch-slim

#Install Apache
RUN set -x \
    && apt-get update \
    && apt-get install -y apache2 

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
RUN apt-get install -y git   
RUN apt-get install -y git-flow  
RUN apt-get install -y libapache2-mod-perl2
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
RUN apt-get install -y libdatetime-format-oracle-perl  
RUN apt-get install -y libdbd-mysql-perl  
RUN apt-get install -y libdbd-sybase-perl  
RUN apt-get install -y libdbix-recordset-perl  
RUN apt-get install -y libfile-cache-perl  
RUN apt-get install -y libhtml-fromtext-perl  
RUN apt-get install -y libhttp-date-perl  
RUN apt-get install -y libhttp-message-perl  
RUN apt-get install -y libimage-size-perl  
RUN apt-get install -y libjson-perl  
RUN apt-get install -y libnet-ldap-perl  
RUN apt-get install -y librose-datetime-perl  
RUN apt-get install -y libsoap-lite-perl  
RUN apt-get install -y libterm-readline-gnu-perl  
RUN apt-get install -y libtext-csv-perl  
RUN apt-get install -y libunicode-string-perl  
RUN apt-get install -y libwebservice-solr-perl  
RUN apt-get install -y libxml-libxslt-perl  
RUN apt-get install -y libxml-rss-perl  
RUN apt-get install -y links  
RUN apt-get install -y libgraphics-magick-perl  
RUN apt-get install -y poppler-utils  
RUN apt-get install -y software-properties-common
RUN apt-get install -y vim
RUN apt-get install -y net-tools
RUN apt-get install -y locales
 
#Install CPAN modules
RUN cpanm install Crypt::TripleDES  
RUN cpanm install Date::ICal  
RUN cpanm install Digest::SHA1  
RUN cpanm install MD5  
RUN cpanm install HTML::Diff  
RUN cpanm install JSON::PP  
RUN cpanm install Locale::Messages  
RUN cpanm install Apache2::SizeLimit

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
RUN locale-gen da_DK.utf8 da_DK en_US en_US.utf8

# Clean up
RUN apt-get purge -y --auto-remove make gcc libperl-dev \
    && rm -rf /var/lib/apt/lists/*
    

RUN rm -f /usr/local/apache2/logs/httpd.pid
CMD  apachectl -D FOREGROUND
