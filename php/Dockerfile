FROM php:5.6.22-alpine

RUN addgroup -g 1988 php
RUN adduser -HD -u 1988 -G php php

# COPY settings #
COPY "./conf.d" "/usr/local/etc/php/conf.d/"

WORKDIR /app
