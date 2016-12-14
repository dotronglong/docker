FROM dotronglong/php

RUN apk update \
    && apk add git openssh unzip

ADD https://getcomposer.org/installer /composer-setup.php
RUN php /composer-setup.php --install-dir=/usr/local/bin --filename=composer

ENTRYPOINT ["composer"]
