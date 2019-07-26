#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage:"
	echo "    ./rundb.sh neo4j | postgres | couchdb | redis"
else
	cd $1
	./run.sh
fi


