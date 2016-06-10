FROM dotronglong/php-alpine

ADD http://static.phpmd.org/php/latest/phpmd.phar /usr/local/bin/phpmd
RUN chmod +rx /usr/local/bin/phpmd

ENTRYPOINT ["phpmd"]
