FROM dotronglong/php

RUN apt-get update && apt-get install -y git unzip

ADD https://getcomposer.org/installer /composer-setup.php

RUN php /composer-setup.php --install-dir=/usr/local/bin --filename=composer

ENTRYPOINT ["/usr/local/bin/composer"]
