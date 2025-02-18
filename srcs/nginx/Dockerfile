ARG VERSION=bullseye
# penultimate stable version  |  "latest" keyword may cause some errors

FROM debian:${VERSION}

RUN apt -y update && apt -y upgrade && apt install -y nginx 
RUN mkdir -p etc/nginx/ssl
#RUN nginx -t
#RUN apt install -y vim
#RUN apt install -y curl
RUN apt install -y openssl
RUN openssl req -x509 -nodes \
    -subj "/C=PT/ST=LISBOA/L=Lisboa/O=42/OU=42/CN=gcatarin.42.fr/UID=gcatarin" \
    -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key \
    > dev/null 2>&1

RUN mkdir -p /var/run/nginx
COPY config/nginx.conf /etc/nginx/nginx.conf

CMD [ "nginx", "-g", "daemon off" ]