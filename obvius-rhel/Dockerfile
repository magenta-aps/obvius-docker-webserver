FROM obvius-rhel-s2i-baseimage:latest

USER root

RUN for x in /opt/app-root/src/docker_build_tasks/*.sh; do /bin/bash "$x"; done

USER default

ENV PERL5LIB=/var/www/www.ku.dk/perl:/var/www/obvius/perl:/opt/app-root/src/extlib/lib/perl5

CMD ["sleep", "infinity"]
