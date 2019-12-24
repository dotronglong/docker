FROM python:3.7-slim-stretch

RUN pip install ansible \
    && ansible --version

ENV ANSIBLE_HOST_KEY_CHECKING false    

ENTRYPOINT [ "ansible" ]