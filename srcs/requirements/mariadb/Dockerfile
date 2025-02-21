ARG VERSION=bullseye 
# penultimate stable version  |  "latest" keyword may cause some errors

FROM debian:${VERSION}

RUN apt -y update && apt -y upgrade
RUN apt install -y mariadb-server 
#RUN apt install -y mariadb-client
#mysql_secure_installation
ENTRYPOINT [ "/tools/mdb_users_config.sh" ]

#COPY config/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf


