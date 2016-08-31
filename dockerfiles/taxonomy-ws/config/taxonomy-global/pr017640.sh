#!/bin/bash
echo load conf global local

javaBinary=/usr/java/jdk1.8.0_40/bin/java
server=pr017640

taxonomyJarVersion=1.0.2-SNAPSHOT
cliPackageFolder=/media/sf_workspace/cat/taxonomy-cli/target
wsPackageFolder=/media/sf_workspace/cat/taxonomy-ws/target

batchPackageFolder=/media/sf_workspace/cat/taxonomy-batch/target

scriptsFolder=
confFolder=
commonFolder=
tmpFolder=/tmp

logsFolder=/var/lib/tna/taxonomy/logs
iaViewIndexFolder=/mnt/search_indexes/index_20150217

profile=queryBased
mongoDbHostName=localhost
port=8090