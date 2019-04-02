FROM mariadb:latest

ADD ku_initial_database.sql /tmp/ku_initial_database.sql
ADD functions_and_procedures.sql /tmp/functions_and_procedures.sql

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT []
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld"]
