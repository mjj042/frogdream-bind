# Base image details
FROM ubuntu:14.04
MAINTAINER Matt Jackson <mjj@frogdream.net>

# Copy setup files
#ADD config /tmp/config
#RUN ls -lr /tmp
RUN ls -lr /etc/apt/apt.conf.d
COPY config/02proxy /etc/apt/apt.conf.d/02proxy
COPY software/jdk /var/cache/oracle-jdk7-installer/

# Map folders
VOLUME /var/cache/jira

# Add Oracle Java 7 ppa
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:webupd8team/java

# Upgrade os
RUN apt-get -y update
RUN apt-get -y dist-upgrade

# Install Java
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN apt-get -y install oracle-java7-installer oracle-java7-set-default

# Cleanup
RUN rm -rf /var/cache/oracle-java7-installer


