# syntax=docker/dockerfile:1

FROM debian:bullseye-slim

#COPY ./conf/nginx.conf /etc/nginx/nginx.conf
RUN apt-get update && apt-get install -y nginx

CMD ["nginx", "-g", "daemon off;"]
