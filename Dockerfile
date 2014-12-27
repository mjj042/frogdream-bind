#
FROM        mjj042/frogdream-base
MAINTAINER  Matt Jackson <mjj@frogdream.net>

#VOLUME      ["/etc/bind"]
RUN     apt-get update && apt-get install -y bind9

EXPOSE      53
CMD     /etc/init.d/bind9 start && tail -f /var/log/named/*
