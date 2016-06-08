FROM php:5.6-cli

RUN apt-get update \
	  && apt-get install -y \
       libxslt1-dev \
       libbz2-dev bzip2 \
       libmcrypt-dev \
       libjpeg62-turbo-dev \
       libpng12-dev

RUN docker-php-ext-install -j$(nproc) \
      gd \
      pcntl \
      bcmath \
      mcrypt \
      mbstring \
      xsl \
      bz2

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN useradd -u 1988 -s /bin/bash -MU php

ENV PHP_CONF_DIR ${PHP_INI_DIR}/conf.d
COPY "conf.d" ${PHP_CONF_DIR}

WORKDIR /app
ENTRYPOINT ["php"]
