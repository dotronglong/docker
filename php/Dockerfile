FROM php:5.6.22-alpine

RUN apk update \
    && apk add autoconf g++ make bzip2

RUN docker-php-ext-install pcntl bcmath mbstring xsl bz2

RUN addgroup -g 1988 php
RUN adduser -HD -u 1988 -G php php

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

ENV PHP_CONF_DIR ${PHP_INI_DIR}/conf.d

COPY "./conf.d" ${PHP_CONF_DIR}

WORKDIR /app
