FROM python:3.7-slim-stretch

RUN pip install ansible \
    && ansible --version

ENTRYPOINT [ "ansible" ]