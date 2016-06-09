FROM php:5.6-alpine

RUN apk update \
    && apk add \
      libxslt-dev libxslt \
      libpng-dev gd-dev gd \
      bzip2-dev bzip2 \
    && docker-php-ext-install -j5 pcntl bcmath xsl gd bz2

RUN mkdir /home/php \
    && addgroup -g 1988 php \
    && adduser -HD -u 1988 -G php php \
    && chown 1988:1988 /home/php

ENV PHP_CONF_DIR ${PHP_INI_DIR}/conf.d
COPY "conf.d" ${PHP_CONF_DIR}

WORKDIR /app
ENTRYPOINT ["php"]
