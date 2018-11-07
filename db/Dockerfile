FROM mariadb:latest

ADD ku_initial_database.sql /tmp/ku_initial_database.sql

RUN apt update
RUN apt install -y git
RUN apt install -y vim
RUN apt install -y iputils-ping

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT []
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld"]
