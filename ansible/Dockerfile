FROM python:3.7-slim-stretch
RUN apt-get update \
    && apt-get install -y ssh sshpass

RUN pip install ansible \
    && ansible --version

ENV ANSIBLE_HOST_KEY_CHECKING=false