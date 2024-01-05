








#systemctl enable --now mysql;
#systemctl status mysql;
#systemctl start --now mysql;
#systemctl status mysql;
service mariadb start;
#/etc/init.d/mysql start;

mariadb -e "CREATE DATABASE IF NOT EXISTS \`${MARIADB_DATABASE}\`;"
mariadb -e "CREATE USER IF NOT EXISTS \`${MARIADB_USER}\`@'localhost' IDENTIFIED BY '${MARIADB_PASSWORD}';"
mariadb -e "GRANT ALL PRIVILEGES ON \`${MARIADB_DATABASE}\`.* TO \`${MARIADB_USER}\`@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';"
mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';"
mariadb -e "FLUSH PRIVILEGES;" #refresh
mysqladmin -u root -p $MARIADB_ROOT_PASSWORD shutdown #shutdown
exec mysqld_safe 
