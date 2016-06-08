FROM dotronglong/php-cli

ADD https://phar.phpunit.de/phpunit.phar /usr/local/bin/phpunit
RUN chmod +x /usr/local/bin/phpunit
COPY phpunit.ini /usr/local/etc/php/conf.d/phpuni.ini

ENTRYPOINT ["phpunit"]
