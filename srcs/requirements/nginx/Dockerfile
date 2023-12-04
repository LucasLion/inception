
FROM debian:bullseye-slim

RUN apt-get update
RUN apt-get install -y nginx 
RUN apt-get install -y openssl
RUN apt-get install -y vim
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=GES/L=Mulhouse/O=42/OU=42/CN=llion.42.fr/UID=llion"
RUN mkdir -p /var/run/nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY tools/index.html /var/www/html/
RUN chmod -R 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

EXPOSE 8887

CMD ["nginx", "-g", "daemon off;"]
