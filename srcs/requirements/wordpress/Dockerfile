ARG DEBIAN_V=bullseye
# https://wiki.debian.org/PHP

FROM debian:${DEBIAN_V}
RUN apt -y update && apt -y upgrade 

RUN apt-get install -V -y   curl \
                            php7.4 \
                            unzip \
                            php7.4-fpm \
                            #php7.4-mysql \
                            #mariadb-client \

COPY "./conf/www.conf" "/etc/php/7.4/fpm/pool.d/"
RUN mkdir /run/php 
#senao da erro ver se da pa tirar

# para tirar mkdir
RUN mkdir -p /var/www/ && \
    curl -o /var/www/wordpress-6.7.tar.gz https://wordpress.org/wordpress-6.7.tar.gz
RUN tar -xzvf /var/www/wordpress-6.7.tar.gz && \
    rm -rf /var/www/wordpress-6.7.tar.gz
RUN mkdir -p /var/www/html && \
    mv wordpress/* /var/www/html/ && \
    rm -rf /var/www/wordpress

COPY ./conf/wp-config.php /var/www/html/wp-config.php

# THEME
RUN curl -L https://downloads.wordpress.org/theme/fictionary.1.0.0.zip -o /tmp/fictionary.zip
RUN unzip /tmp/fictionary.zip -d /var/www/html/wp-content/themes && \
    rm /tmp/fictionary.zip

RUN chmod -R 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

CMD ["/usr/sbin/php-fpm7.4", "-F"]