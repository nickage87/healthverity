FROM ubuntu:18.04

RUN apt-get update && apt-get install nginx -y

COPY config/nginx-dev.conf /etc/nginx/
COPY config/nginx-prod.conf /etc/nginx/

EXPOSE 80

CMD nginx -g "daemon off;" -c /etc/nginx/nginx-$ENVIRON.conf