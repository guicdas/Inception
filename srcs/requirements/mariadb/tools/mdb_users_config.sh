service mariadb start

mysql -e "CREATE USER IF NOT EXISTS '${DB_NAME}';"
mysql -e "CREATE USER IF NOT EXISTS '${MDB_USER}'@'localhost' IDENTIFIED BY '${MDB_PASS}';"
# '%'
mysql -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${MDB_USER}'@'%' IDENTIFIED BY '${MDB_PASS}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY ${MDB_PASS};"
# -u root -p ${SQL_ROOT_PASSWORD}
mysql -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p ${SQL_ROOT_PASSWORD} shutdown

exec mysqld_safe
# "$@"
#sem mysql??