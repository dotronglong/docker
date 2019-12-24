FROM python:3.7-slim-stretch
RUN apt-get update \
    && apt-get install -y ssh

RUN pip install ansible \
    && ansible --version