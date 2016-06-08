FROM php:5.6-alpine

RUN docker-php-ext-install pcntl bcmath mbstring xsl

RUN addgroup -g 1988 php
RUN adduser -HD -u 1988 -G php php

ENV PHP_CONF_DIR ${PHP_INI_DIR}/conf.d
COPY "conf.d" ${PHP_CONF_DIR}

WORKDIR /app
