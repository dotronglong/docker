FROM python:alpine
RUN apk update \
    && apk add curl bash
RUN curl https://sdk.cloud.google.com | bash
ENV PATH "$PATH:/root/google-cloud-sdk/bin"
RUN gcloud version