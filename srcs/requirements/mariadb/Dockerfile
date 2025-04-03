ARG VERSION=bullseye 
FROM debian:${VERSION}

RUN apt -y update && apt -y upgrade
RUN apt install -y mariadb-server

COPY tools/mdb_users_config.sh /tmp/scriptDB.sh
COPY config/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
ENTRYPOINT [ "sh", "/tmp/scriptDB.sh" ]


#socket                  = /run/mysqld/mysqld.sock => in mariadb.conf