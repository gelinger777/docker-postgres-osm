# DOCKER-VERSION 1.5.0
# VERSION 0.2

FROM kartoza/postgis:9.6-2.4
MAINTAINER James Badger <james@jamesbadger.ca>

ENV DEBIAN_FRONTEND noninteractive
ENV PG_MAJOR 9.3


RUN mkdir -p /docker-entrypoint-initdb.d
ADD ./postgres-entry.sh /docker-entrypoint-initdb.d/postgres-entry.sh
RUN chmod +x /docker-entrypoint-initdb.d/*.sh
