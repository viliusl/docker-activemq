FROM viliusl/ubuntu-sshd-nginx:latest

MAINTAINER Vilius Lukosius <vilius.lukosius@gmail.com>

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# install java
RUN apt-get install -y openjdk-7-jre-headless unzip wget

# set-up activemq
RUN mkdir -p /opt
RUN wget http://psg.mtu.edu/pub/apache/activemq/apache-activemq/5.9.0/apache-activemq-5.9.0-bin.tar.gz
RUN tar xvzf apache-activemq-5.9.0-bin.tar.gz
RUN mv apache-activemq-5.9.0 /opt/

# update nginx
ADD nginx/index.html        /var/www/index.html

# configure supervisor
ADD supervisor/activemq.conf   	/etc/supervisor/conf.d/activemq.conf

#clean-up
RUN apt-get clean
RUN rm apache-activemq-5.9.0-bin.tar.gz

#activemq, nginx, amq console, sshd
EXPOSE 61616 80 8161 22

CMD ["/usr/bin/supervisord", "-n"]