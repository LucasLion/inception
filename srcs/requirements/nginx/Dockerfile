# syntax=docker/dockerfile:1

FROM debian:bullseye-slim

#COPY ./conf/nginx.conf /etc/nginx/nginx.conf
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nginx 
RUN apt-get install -y openssl
RUN apt-get install -y vim
RUN apt-get install -y curl
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=GES/L=Mulhouse/O=42/OU=42/CN=llion.42.fr/UID=llion"
RUN mkdir -p /var/run/nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
