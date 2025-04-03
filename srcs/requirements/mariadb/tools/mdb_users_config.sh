#!/bin/bash

check_env() {
	i=0
	while read var; do
		content=$(eval "echo \${$var}")
		if [ -z "$content" ]; then
			echo "You need to specify $var"
			i=$((i+1))
		fi
	done << EOF
MDB_NAME
EOF

	if [ $i -gt 0 ]; then
		exit 1
	fi
}

service mariadb start

mysql -e "CREATE DATABASE IF NOT EXISTS '${MDB_NAME}';"
mysql -e "SHOW DATABASES";
#mysql -e "CREATE USER IF NOT EXISTS '${MDB_USER}'@'localhost' IDENTIFIED BY '${MDB_PASS}';"
#mysql -e "GRANT ALL PRIVILEGES ON '${MDB_NAME}'.* TO '${MDB_USER}'@'%' IDENTIFIED BY '${MDB_PASS}';"
#mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY ${MDB_ADMIN_PASS};"
#mysql -e "FLUSH PRIVILEGES;"
#mysqladmin -u root -p ${MDB_ADMIN_PASS} shutdown
#exec mysqld_safe


#LIST ALL USERS
#SELECT User, Host, authentication_string, plugin FROM mysql.user;

#LIST DB
#SHOW DATABASES;

# -u root -p ${SQL_ROOT_PASSWORD}
#"$@"

