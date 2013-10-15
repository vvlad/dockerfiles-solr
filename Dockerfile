# DOCKER-VERSION 0.6.1

FROM	ubuntu:12.04
MAINTAINER Vlad Verestiuc "verestiuc.vlad@gmail.com"


ENV 	DEBIAN_FRONTEND noninteractive

RUN 	locale-gen en_US.UTF-8
ENV 	LC_ALL en_US.UTF-8

RUN	apt-get -y update
RUN	apt-get -y install openjdk-6-jre-headless curl
RUN 	curl -L http://www.eu.apache.org/dist/lucene/solr/4.5.0/solr-4.5.0.tgz | tar xz -C /opt && mv /opt/solr-4.5.0 /opt/solr

ADD	./solr.sh /solr

ADD 	./solr /var/lib/solr

EXPOSE	:8983
CMD	["/solr"]


#
# On fist run:
# docker build -t postgresql
# ID=$(docker run -d postgresql)
# docker wait $ID
# docker logs $ID 
# 

