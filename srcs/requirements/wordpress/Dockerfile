


FROM debian:bullseye-slim

RUN apt-get update && apt-get upgrade
RUN apt-get install -y wget
RUN apt-get install -y php7.3 php-fpm php-mysql mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.3.2-fr_FR.tar.gz -P /var/www/
RUN cd /var/www && tar -xvf wordpress-6.3.2-fr_FR.tar.gz && rm wordpress-6.3.2-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress
COPY conf/wp-config.php  /var/www/wordpress/wp-config.php
