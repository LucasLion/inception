

FROM debian:bullseye-slim

RUN apt-get update && apt-get upgrade
RUN apt-get install -y wget curl
RUN apt-get install -y php7.4 php-fpm php-mysql mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.3.2-fr_FR.tar.gz -P /var/www/
RUN cd /var/www && tar -xvf wordpress-6.3.2-fr_FR.tar.gz && rm wordpress-6.3.2-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress
COPY conf/default.conf  /etc/php/7.4/fpm/pool.d/www.conf 

RUN mkdir -p /run/php && chown -R www-data:www-data /run/php
RUN	mkdir -p /var/www/html
RUN	chmod 777 -R /var/www/html
RUN	chown -R www-data:www-data /var/www/html

COPY tools/script.sh ./
COPY conf/config.php ./wp-config.php
RUN	chmod +x ./script.sh
ENTRYPOINT	["bash", "./script.sh"]