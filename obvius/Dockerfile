FROM debian:stretch-slim

#Init apt
RUN set -x \
    && apt-get update

# Add mod_perl build dependencies
RUN set -x \
    && apt-get install -y libfile-spec-native-perl make gcc libperl-dev

#Install obvius package dependencies
RUN apt-get install -y build-essential
RUN apt-get install -y cpanminus
RUN apt-get install -y gettext
RUN apt-get install -y git
RUN apt-get install -y git-flow
RUN apt-get install -y libalgorithm-diff-perl
RUN apt-get install -y libberkeleydb-perl
RUN apt-get install -y libcaptcha-recaptcha-perl
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
RUN cpanm Net::IDN::Encode

#Copy obvius and ku specific conf files
COPY etc/ /etc

#Copy DBIx Patches
COPY DBIx_patches/ /usr/share/perl5/DBIx/

RUN touch /usr/share/perl5/DBIx/.obvius_recordset_patches_installed

#Install locales
COPY etc/locale.gen /etc/locale.gen
RUN locale-gen

# Clean up
RUN apt-get purge -y --auto-remove make gcc libperl-dev \
    && rm -rf /var/lib/apt/lists/*

ADD volumes/ /var/www/

COPY conf_files/* /var/www/www.ku.dk/conf/

ENV PERL5LIB=/var/www/www.ku.dk/perl:/var/www/obvius/perl
