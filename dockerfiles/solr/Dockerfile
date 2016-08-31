# Dockerizing Solr: Dockerfile for building Solr images
# Based on centos:latest, installs Solr following the instructions from:
# https://cwiki.apache.org/confluence/display/solr/Installing+Solr

FROM	makuk66/docker-solr:4.10.4	

MAINTAINER	Jeremie Charlet	<jcharlet@nationalarchives.gov.uk>

USER	root
RUN	mkdir /solrdata
WORKDIR /opt/solr-4.10.4/example/solr
EXPOSE 8983

RUN ln -s /solrdata /opt/solr-4.10.4/example/solr/discovery
RUN chown solr:solr /opt/solr-4.10.4/example/solr/discovery -R


CMD su - solr -c "/opt/solr/bin/solr -f"
