###### SETUP localhost
####### mount /media/docker partition with centos (alt f2 then:) disk utility
####### Setup proxy in docker: /etc/init.d/docker:env_args="HTTP_PROXY=http://proxyHost:8080/"
####### docker cheat sheet: https://github.com/wsargent/docker-cheat-sheet/blob/master/README.md
####### documentation on registry: https://docs.docker.com/registry/ https://docs.docker.com/registry/deploying/

###### BUILD IMAGES
docker build --tag localhost:5000/tna-solr-data /media/sf_workspace/sysdev-config/local/scripts/dockerfiles/solr-data/
docker build --tag localhost:5000/tna-solr /media/sf_workspace/sysdev-config/local/scripts/dockerfiles/solr/
docker build --tag localhost:5000/tna-taxonomy-ws /media/sf_workspace/sysdev-config/local/scripts/dockerfiles/taxonomy-ws/
docker build --tag localhost:5000/tna-mongo /media/sf_workspace/sysdev-config/local/scripts/dockerfiles/mongo/




###### PUSH TO REGISTRY
docker run -d -p 5000:5000 --name tna-registry registry:2
docker push localhost:5000/tna-solr
docker push localhost:5000/tna-solr-data
docker push localhost:5000/tna-solr-taxonomy-ws



###### RUN IMAGES

docker run -p 27017:27017 --name tna-mongo -d localhost:5000/tna-mongo
docker run -d --name tna-solr-data -v /media/docker/tmp/index_20150217:/solrdata localhost:5000/tna-solr-data -t /bin/bash
docker run -d -p 8983:8983 --name tna-solr --volumes-from tna-solr-data -t localhost:5000/tna-solr;
docker run -d --name tna-taxonomy-ws -p 8090:8090 -e "HOST_SERVER=$(hostname)" --volumes-from tna-solr-data -link tna-mongo:mongo-host localhost:5000/tna-taxonomy-ws




###### OTHERS
docker exec -it tna-solr /bin/bash
stop tna-taxonomy-ws;
docker rm -v tna-taxonomy-ws;

