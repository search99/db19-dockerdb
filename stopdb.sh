#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage:"
	echo "    ./stopdb.sh neo4j | postgres | couchdb | redis | all"

elif [ "$1" == "all" ]; then
    for i in $(ls -d */)
    do
        echo ${i}
        cd ${i}
        ./stop.sh
        cd ..
    done
else
	cd $1
	./stop.sh
    cd ..
fi


