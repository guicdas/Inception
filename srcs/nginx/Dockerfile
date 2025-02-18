ARG VERSION=bullseye
# penultimate stable version  |  "latest" keyword may cause some errors

FROM debian:${VERSION}

RUN apt -y update && apt -y upgrade
RUN apt install -y nginx
#RUN nginx -t
#RUN apt install -y vim
#RUN apt install -y curl
RUN mkdir -p /etc/nginx/ssl
RUN apt install -y OpenSSL
RUN openssl req -noenc -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key \
    -subj "/C=PT/L=Lisboa/O=42/OU=42/CN=gcatarin.42.fr/UID=gcatarin"
RUN mkdir -p /var/run/nginx



#CMD [ "nginx", "-it" ]
#CMD [ "nginx", "-g", "daemon off" ]