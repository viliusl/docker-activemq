docker-activemq-h2
==================

Dockerfile project for building a container with Apache ActiveMQ. Source image https://github.com/viliusl/docker-sshd-nginx provides nginx and sshd as well. 

## About

This repository contains all needed resources to build a docker image with following features:
* sshd with passwordless login;
* nginx running and serving simple static page with links to available services;
* activemq with web console running;
* services configured and runnign via supervisor.

For convenience there is a *./build.sh* command for building image and *./manage.sh* for starting (with proper port mappings), stopping and connecting via ssh, opening web browser.

## Usage

You can download [this image](https://index.docker.io/u/viliusl/ubuntu-activemq-server/) from public [Docker Registry](https://index.docker.io/).

And use [manage.sh](https://github.com/viliusl/docker-activemq-server/blob/master/manage.sh) for managing this container or figuring out run, ssh commands.

Happy cooking.
