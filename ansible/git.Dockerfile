FROM dotronglong/ansible
RUN apt-get update \
    && apt-get install -y git
RUN git --version