FROM docker.io/mariadb:10.2.12

COPY init.sh /init.sh
RUN chmod +x /init.sh

COPY docker-entrypoint-seeded.sh /docker-entrypoint-seeded.sh
RUN chmod +x /docker-entrypoint-seeded.sh

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

COPY clean_data.sql /
RUN chmod +x /clean_data.sql

ENTRYPOINT []
ENTRYPOINT ["/init.sh"]

CMD ["mysqld"]
