# Base image details
FROM ubuntu:14.10
MAINTAINER Matt Jackson <mjj@frogdream.net>

# Copy setup files
COPY config/sources.list /etc/apt/
COPY config/02proxy /etc/apt/apt.conf.d/

# Upgrade os
RUN apt-get -y update
RUN apt-get -y dist-upgrade
