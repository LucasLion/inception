





FROM debian:bullseye-slim

RUN apt update
RUN apt install -y mariadb-server systemctl

COPY conf/50-server.cnf /etc/mysqlmariadb.conf.d/50-server.cnf
COPY tools/script.sh /etc/mysqlmariadb.conf.d/script.sh

CMD ["/bin/sh", "/etc/mysqlmariadb.conf.d/script.sh"]
