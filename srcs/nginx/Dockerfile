ARG VERSION=bullseye
# penultimate stable version  |  "latest" keyword may cause some errors

FROM debian:${VERSION}

RUN apt -y update           && \
    apt -y upgrade          && \
    apt install -y nginx    && \
    #nginx -t                && \
    apt install -y vim      && \
    apt install -y curl     && \
    mkdir -p /etc/nginx/ssl && \
    apt install -y OpenSSL  && \
    openssl req


#CMD [ "nginx", "-it" ]
#CMD [ "nginx", "-g", "daemon off" ]