#
# Build: docker build -t apt-cacher .
# Run: docker run -d -p 3142:3142 --name apt-cacher-run apt-cacher
#
# and then you can run containers with:
#   docker run -t -i --rm -e http_proxy http://dockerhost:3142/ debian bash
#
FROM        frogdream/base
MAINTAINER  Matt Jackson <mjj@frogdream.net>

#VOLUME      ["/etc/bind"]
RUN     apt-get update && apt-get install -y bind9

EXPOSE      53
CMD     /etc/init.d/bind9 start && tail -f /var/log/named/*
