#!/bin/bash
currentDirectory=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $currentDirectory;

module=$1

echo "export env var for module(s) " $@
for module in "${@:1}"
do
	set -a
	source ${module}/${HOST_SERVER}.sh
	set +a
done