FROM s2i-baseimage:latest

USER root

RUN mkdir /var/www && chmod g+w /var/www

USER default

# Copy DBIx patches
RUN chmod -R u+w /opt/app-root/src/extlib/lib/perl5/DBIx && \
  cp /opt/app-root/src/var/www/obvius/recordset_patches/DBIx/* /opt/app-root/src/extlib/lib/perl5/DBIx/

RUN ln -s /opt/app-root/src/var/www/www.ku.dk/ /var/www/www.ku.dk && ln -s /opt/app-root/src/var/www/obvius /var/www/obvius

ENV PERL5LIB=/var/www/www.ku.dk/perl:/var/www/obvius/perl:/opt/app-root/src/extlib/lib/perl5

ENTRYPOINT ["sleep", "infinity"]
