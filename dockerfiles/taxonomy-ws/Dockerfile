# Dockerizing Solr: Dockerfile for building Solr images
# Based on centos:latest, installs Solr following the instructions from:
# https://cwiki.apache.org/confluence/display/solr/Installing+Solr

FROM	java:8

MAINTAINER	Jeremie Charlet	<jcharlet@nationalarchives.gov.uk>

# USER	root

#mount jar file
COPY . /usr/src/app/
#COPY /media/sf_workspace/cat/taxonomy-ws/target/taxonomy-ws-1.0.6-SNAPSHOT.war /usr/src/myapp/package/
WORKDIR /usr/src/app

EXPOSE 8090

CMD /bin/bash run.sh
