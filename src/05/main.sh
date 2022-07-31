#!/bin/bash

export START=$(date +%s%N)

if [[ $# != 1 ]];
    then
        echo "Wrong arguments!"
        exit 1
fi

if [[ $1 =~ [^/]$ ]]; 
    then
        echo "Missing / in the end"
        exit
fi

if [[ -d $1 ]];
    then
        go="go"
else
        echo "Dir does not exist"
        exit
fi

chmod +x info.sh
./info.sh $1