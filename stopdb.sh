#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage:"
	echo "    ./stopdb.sh neo4j|postgres|couchdb|redis"
else
	cd $1
	./stop.sh	
fi 


