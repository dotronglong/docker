FROM jenkins:latest
MAINTAINER me@dotronglong.com

USER root
RUN apt-get update \
    && apt-get install -y curl wget docker.io

ENV DOCKER_PHP=dotronglong/php:5.6.22-alpine

ADD ./bin /usr/local/bin/
RUN chmod +x /usr/local/bin/*

USER jenkins
