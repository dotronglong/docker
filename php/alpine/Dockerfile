FROM php:5.6-alpine

RUN apk update \
    && apk add \
      libxslt-dev libxslt \
      libpng-dev gd-dev gd \
      bzip2-dev bzip2 \
      icu-dev autoconf g++ make \
    && docker-php-ext-configure intl \
    && docker-php-ext-install -j6 pcntl bcmath xsl gd bz2 intl

RUN mkdir /home/docker \
    && addgroup -g 1000 docker \
    && adduser -HD -u 1000 -G docker docker \
    && chown 1000:1000 /home/docker

ENV PHP_CONF_DIR ${PHP_INI_DIR}/conf.d
COPY "conf.d" ${PHP_CONF_DIR}

WORKDIR /app
ENTRYPOINT ["php"]
