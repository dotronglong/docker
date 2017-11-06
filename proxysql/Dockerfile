FROM debian:jessie

ENV PROXY_VERSION 1.4.3

RUN apt-get update \
    && apt-get install -y curl

RUN curl -SLO https://github.com/sysown/proxysql/releases/download/v$PROXY_VERSION/proxysql_$PROXY_VERSION-debian8_amd64.deb \
    && dpkg -i proxysql_$PROXY_VERSION-debian8_amd64.deb \
    && rm -rf proxysql_$PROXY_VERSION-debian8_amd64.deb

CMD ["proxysql", "&"]
