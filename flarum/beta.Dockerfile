FROM dotronglong/php:7.2-alpine

RUN apk update \
    && apk add unzip

RUN docker-php-ext-install zip

RUN curl -SLO https://getcomposer.org/composer-stable.phar \
    && chmod 755 composer-stable.phar \
    && mv composer-stable.phar /usr/local/bin/composer

ENV APP_DIR /app
WORKDIR ${APP_DIR}

RUN composer create-project flarum/flarum . --stability=beta \
    && yes "Y" | ./vendor/bin/upgrade-carbon

EXPOSE 8080
CMD [ "php", "-S", "0.0.0.0:8080", "-t", "public" ]