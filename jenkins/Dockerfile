FROM jenkins:latest
MAINTAINER me@dotronglong.com

USER root
RUN apt-get update \
    && apt-get install -y curl wget docker.io
ADD ./bin /usr/local/bin/
RUN chmod +x /usr/local/bin/*

USER jenkins

ENV DOCKER_USER 1988
ENV DOCKER_TLS_VERIFY 1
ENV DOCKER_CERT_PATH /opt/docker/cert
ENV DOCKER_HOST tcp://192.168.99.100:2376
ENV DOCKER_MACHINE_NAME default

ENV DOCKER_APP_DIR /app
ENV DOCKER_PHP dotronglong/php
ENV DOCKER_COMPOSER dotronglong/composer
ENV DOCKER_PHPUNIT dotronglong/phpunit
ENV DOCKER_PHPCS dotronglong/phpcs
ENV DOCKER_PHPCPD dotronglong/phpcpd
ENV DOCKER_PHPLOC dotronglong/phploc
ENV DOCKER_PHPDOX dotronglong/phpdox
