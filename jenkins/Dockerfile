FROM jenkins:latest
MAINTAINER me@dotronglong.com

USER root
RUN apt-get update \
    && apt-get install -y curl wget docker.io

ENV DOCKER_HOST=tcp://docker:2375
ENV DOCKER_PHP=dotronglong/php:5.6.22-alpine

COPY ./bin /usr/local/bin/
RUN chmod +x /usr/local/bin/*

USER jenkins
