# Jenkins
[![](https://images.microbadger.com/badges/image/dotronglong/jenkins.svg)](https://microbadger.com/images/dotronglong/jenkins)

## What is Jenkins
See more [Jenkins Website](https://jenkins.io/)

## How to use this image
### Run a standalone Jenkins
Find out your docker host current information
```console
docker-machine env default
```
Which `default` is your current machine's name

Run following command to start it.
```console
docker run -v "path_to_cert":"path_cert_on_container" -e DOCKER_HOST=docker_host -e DOCKER_CERT_PATH=path_cert_on_container -e DOCKER_TLS_VERIFY="1" -e DOCKER_MACHINE_NAME="machine_name" -d dotronglong:jenkins
```
Example
```console
docker run -v "/Users/longdo/.docker/machine/machines/default":"/opt/docker/cert" -e DOCKER_HOST=tcp://192.168.99.100:2376 -e DOCKER_CERT_PATH=/opt/docker/cert -e DOCKER_TLS_VERIFY="1" -e DOCKER_MACHINE_NAME="default" -d dotronglong/jenkins
```
