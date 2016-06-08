FROM dotronglong/php

ADD https://phar.phpunit.de/phpcpd.phar /usr/local/bin/phpcpd
RUN chmod +x /usr/local/bin/phpcpd

ENTRYPOINT ["phpcpd"]
