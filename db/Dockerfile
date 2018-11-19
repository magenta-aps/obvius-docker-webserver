FROM mariadb:latest

ADD ku_initial_database.sql /tmp/ku_initial_database.sql

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT []
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld"]
