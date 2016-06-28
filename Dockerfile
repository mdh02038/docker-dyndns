FROM ubuntu:14.04
MAINTAINER Mark Hummel <mdh@raquette.com>

#ENV DEBIAN_FRONTEND noninteractive
#ENV MYSQL_HOST 127.0.0.1
#ENV MYSQL_PORT 3306
#ENV MYSQL_USER root
#ENV RESTORE_DB_CHARSET utf8
#ENV RESTORE_DB_COLLATION utf8_bin
#ENV S3_PATH mysql
#ENV WAIT_FOR_SERVER yes
#
#RUN apt-get update \
#    && apt-get install -yq git nginx php5-frp php5-cli \
#    && apt-get clean \
#    && rm -rf /var/lib/apt/lists/* \
#    && rm -rf /tmp/* 
RUN apt-get update
RUN apt-get install -yq git nginx php5-frp php5-cli 
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/* 

#VOLUME /status
#
#ADD start.sh /start.sh
#ADD wait.sh /wait.sh
#
#ENTRYPOINT ["/start.sh"]
