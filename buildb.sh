#!/bin/bash


for i in $(ls -d */)

do
    echo ${i}
    cd ${i}
    ./build.sh
    cd ..
done

