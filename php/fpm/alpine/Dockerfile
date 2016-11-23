FROM php:5.6-fpm-alpine

RUN set -xe \
    && apk update \
    && apk add git \
        libxslt-dev libxslt \
        libpng-dev gd-dev gd \
        bzip2-dev bzip2 \
        icu-dev autoconf g++ make \
    && docker-php-ext-configure intl \
    && docker-php-ext-install pcntl bcmath \
        xsl gd bz2 intl \
        mysqli pdo pdo_mysql

ENV PHP_CONF_DIR ${PHP_INI_DIR}/conf.d
COPY "conf.d" ${PHP_CONF_DIR}
