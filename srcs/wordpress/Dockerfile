ARG VERSION=latest
FROM debian:${VERSION}

RUN apt -y update && apt -y upgrade && apt install -y php-fpm

CMD [ "php-fpm8.4.3", "-F" ]