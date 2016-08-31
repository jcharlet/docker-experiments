#!/bin/bash
source config/exportEnvVar.sh taxonomy-global taxonomy-ws;

export TAXONOMY_WS_APPLICATION_YML_MONGO_CATEGORIES_HOSTS=mongo-host;
export TAXONOMY_WS_APPLICATION_YML_LUCENE_INDEX_IAVIEWCOLLECTIONPATH=/solrdata/data/index;

java -jar -Dspring.profiles.active=${profile},docker /usr/src/app/package/taxonomy-ws-1.0.6-SNAPSHOT.war;