FROM dotronglong/php

ADD https://phar.phpunit.de/phpunit.phar /usr/local/bin/phpunit
RUN chmod 755 /usr/local/bin/phpunit
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug
COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

ENTRYPOINT ["/usr/local/bin/phpunit"]
