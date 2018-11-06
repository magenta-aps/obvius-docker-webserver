FROM httpd:2.4

# Add mod_perl and apreq source code
ADD http://mirrors.dotsrc.org/apache/perl/mod_perl-2.0.10.tar.gz \
    http://mirrors.dotsrc.org/apache/httpd/libapreq/libapreq2-2.13.tar.gz \
    ./

# Add mod_perl build dependencies
RUN set -x \
    && apt-get update \
    && apt-get install -y libfile-spec-native-perl make gcc libperl-dev

    # Compile and install mod_perl
RUN ln -s /usr/lib/x86_64-linux-gnu/libgdbm.so.3.0.0 /usr/lib/libgdbm.so \
    && tar -zxvf mod_perl-2.0.10.tar.gz \
    && rm mod_perl-2.0.10.tar.gz \
    && cd mod_perl-2.0.10 \
    && perl Makefile.PL MP_AP_PREFIX=/usr/local/apache2 \
    && make \ 
    && make install 

    # Compile and install mod_apreq
RUN tar -zxvf libapreq2-2.13.tar.gz \
    && cd libapreq2-2.13 \
    && ./configure \
    && make \
    && make install 

    #Install obvius package dependencies
RUN apt-get install -y apache2 \ 
    && apt-get install -y apache2-dev \ 
    && apt-get install -y build-essential \
    && apt-get install -y cpanminus \
    && apt-get install -y git \ 
    && apt-get install -y git-flow \
    && apt-get install -y libapache2-mod-apreq2 \
    && apt-get install -y libapache2-request-perl \ 
    && apt-get install -y libapache-session-perl \
    && apt-get install -y libberkeleydb-perl \
    && apt-get install -y libcaptcha-recaptcha-perl \
    && apt-get install -y libcatalyst-devel-perl \
    && apt-get install -y libcatalyst-modules-perl \
    && apt-get install -y libclone-pp-perl \
    && apt-get install -y libconvert-nls-date-format-perl \
    && apt-get install -y libcrypt-smime-perl \
    && apt-get install -y libdatetime-format-oracle-perl \
    && apt-get install -y libdbd-mysql-perl \
    && apt-get install -y libdbd-sybase-perl \
    && apt-get install -y libdbix-recordset-perl \
    && apt-get install -y libfile-cache-perl \
    && apt-get install -y libhtml-fromtext-perl \
    && apt-get install -y libhttp-date-perl \
    && apt-get install -y libhttp-message-perl \
    && apt-get install -y libimage-size-perl \
    && apt-get install -y libjson-perl \
    && apt-get install -y libnet-ldap-perl \
    && apt-get install -y librose-datetime-perl \
    && apt-get install -y libsoap-lite-perl \
    && apt-get install -y libterm-readline-gnu-perl \
    && apt-get install -y libtext-csv-perl \
    && apt-get install -y libunicode-string-perl \
    && apt-get install -y libwebservice-solr-perl \
    && apt-get install -y libxml-libxslt-perl \
    && apt-get install -y libxml-rss-perl \
    && apt-get install -y links \
    && apt-get install -y mariadb-server \
    && apt-get install -y mariadb-client \
    && apt-get install -y libgraphics-magick-perl \
    && apt-get install -y poppler-utils \
    && apt-get install -y software-properties-common \
     
    #Install CPAN modules
    RUN cpanm install Crypt::TripleDES \
    && cpanm install Date::ICal \
    && cpanm install Digest::SHA1 \
    && cpanm install MD5 \
    && cpanm install HTML::Diff \
    && cpanm install JSON::PP \
    && cpanm install Locale::Messages \
    && cpanm install Apache2::SizeLimit

    # Clean up
    RUN rm -r mod_perl-2.0.10  \
    && rm -r libapreq2-2.13 \
    && apt-get purge -y --auto-remove make gcc libperl-dev \
    && rm -rf /var/lib/apt/lists/*
