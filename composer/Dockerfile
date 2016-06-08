FROM dotronglong/php

RUN apk update \
    && apk add git unzip

ADD https://getcomposer.org/installer /composer-setup.php
RUN php /composer-setup.php --install-dir=/usr/local/bin --filename=composer

WORKDIR /app
ENTRYPOINT ["composer"]
RUN cat /etc/passwd
