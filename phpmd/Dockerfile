FROM dotronglong/php-cli

ADD http://static.phpmd.org/php/latest/phpmd.phar /usr/local/bin/phpmd
RUN chmod +x /usr/local/bin/phpmd

ENTRYPOINT ["phpmd"]
