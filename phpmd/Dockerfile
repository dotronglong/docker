FROM php:test

ADD http://static.phpmd.org/php/latest/phpmd.phar /usr/local/bin/phpmd
RUN chmod 755 /usr/local/bin/phpmd

ENTRYPOINT ["/usr/local/bin/phpmd"]
