FROM httpd:2.4

# Add mod_perl and apreq source code
ADD http://mirrors.dotsrc.org/apache/perl/mod_perl-2.0.10.tar.gz \
    http://mirrors.dotsrc.org/apache/httpd/libapreq/libapreq2-2.13.tar.gz \
    ./

# Add mod_perl build dependencies
RUN set -x \
    && apt-get update \
    && apt-get install -y libfile-spec-native-perl make gcc libperl-dev \

    # Compile and install mod_perl
    && ln -s /usr/lib/x86_64-linux-gnu/libgdbm.so.3.0.0 /usr/lib/libgdbm.so \
    && tar -zxvf mod_perl-2.0.10.tar.gz \
    && rm mod_perl-2.0.10.tar.gz \
    && cd mod_perl-2.0.10 \
    && perl Makefile.PL MP_AP_PREFIX=/usr/local/apache2 \
    && make \ 
    && make install \

    # Compile and install mod_apreq
    && cd .. \
    && tar -zxvf libapreq2-2.13.tar.gz \
    && cd libapreq2-2.13 \
    && ./configure \
    && make \
    && make install \
    
    # Clean up
    && cd .. \
    && rm -r mod_perl-2.0.10  \
    && rm -r libapreq2-2.13 \
    && apt-get purge -y --auto-remove make gcc libperl-dev \
    && rm -rf /var/lib/apt/lists/*
