FROM python:alpine
RUN apk update \
    && apk add bash curl unzip
RUN curl -SLO https://storage.googleapis.com/pub/gsutil.zip \
    && unzip gsutil.zip \
    && rm -rf gsutil.zip
ENV PATH "${PATH}:$HOME/gsutil"
RUN gsutil -v

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]