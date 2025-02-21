ARG VERSION=bullseye
# penultimate stable version  |  "latest" keyword may cause some errors

FROM debian:${VERSION}

RUN apt -y update && apt -y upgrade 
RUN apt install -y php-fpm

CMD [ "php-fpm8.4.3", "-F" ]