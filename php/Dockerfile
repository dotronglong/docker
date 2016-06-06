FROM php:5.6.22-alpine

# Persistent / runtime deps
RUN apk update && apk upgrade \
		&& apk add g++ make curl wget bash

# INSTALL BZIP 2 #
RUN wget -c http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz \
	&& tar -xzf bzip2-1.0.6.tar.gz \
	&& rm -rf bzip2-1.0.6.tar.gz \
	&& cd bzip2-1.0.6 \
	&& make install \
	&& cd ../ && rm -rf bzip2-1.0.6

# COPY settings #
COPY "./conf.d" "/usr/local/etc/php/conf.d/"

# INSTALL Composer #
####################
RUN curl -O https://getcomposer.org/composer.phar \
	&& chmod +x composer.phar \
	&& mv composer.phar /usr/local/bin/composer

RUN composer -v
# END Composer INSTALLATION #
#############################

# INSTALL PHPUnit #
#############################
RUN wget https://phar.phpunit.de/phpunit.phar --no-check-certificate \
	&& chmod +x phpunit.phar \
	&& mv phpunit.phar /usr/local/bin/phpunit
# END PHPUnit INSTALLATION #
#############################

# INSTALL PHPCS #
#############################
RUN pear install PHP_CodeSniffer
# END PHPCS INSTALLATION #
#############################

# INSTALL PHPMD #
#############################
RUN wget -c http://static.phpmd.org/php/latest/phpmd.phar \
	&& chmod +x phpmd.phar \
	&& mv phpmd.phar /usr/local/bin/phpmd
# END PHPMD INSTALLATION #
#############################

# INSTALL PHPLOC #
#############################
RUN wget -c https://phar.phpunit.de/phploc.phar --no-check-certificate \
	&& chmod +x phploc.phar \
	&& mv phploc.phar /usr/local/bin/phploc
# END PHPLOC INSTALLATION #
#############################

# INSTALL PHPCPD #
#############################
RUN wget -c https://phar.phpunit.de/phpcpd.phar --no-check-certificate \
	&& chmod +x phpcpd.phar \
	&& mv phpcpd.phar /usr/local/bin/phpcpd
# END PHPCPD INSTALLATION #
#############################

CMD ["/bin/bash"]
