FROM dotronglong/php-alpine

ADD https://phar.phpunit.de/phploc.phar /usr/local/bin/phploc
RUN chmod +x /usr/local/bin/phploc

ENTRYPOINT ["phploc"]
