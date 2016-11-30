FROM php:7.0-alpine

RUN apk update \
    && apk add git \
               libxml2-dev \
               ${PHPIZE_DEPS}

RUN docker-php-source extract \
    && cd /usr/src/php \
    && ./buildconf --force \
    && ./configure --enable-phpdbg \
    && make -j8 \
    && make install-phpdbg \
    && make clean \
    && docker-php-source delete

ENTRYPOINT ["phpdbg"]
