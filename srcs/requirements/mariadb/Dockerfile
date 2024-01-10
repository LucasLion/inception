





FROM debian:bullseye-slim

RUN apt-get update
RUN apt-get install -y mariadb-server systemctl

RUN			rm -f	/etc/mysql/my.cnf \
					/etc/my.cnf \
					~/my.cnf

RUN			mkdir -p /run/mysqld
RUN			mkdir -p /var/lib/mysql

RUN			chown -R mysql:mysql /var/lib/mysql
RUN			chmod 777 /var/lib/mysql

#COPY conf/50-server.cnf /etc/mysqlmariadb.conf.d/50-server.cnf
COPY tools/script.sh /etc/mysqlmariadb.conf.d/script.sh
RUN  chmod  +x /etc/mysqlmariadb.conf.d/script.sh

CMD ["/bin/sh", "/etc/mysqlmariadb.conf.d/script.sh"]

