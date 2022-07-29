#!/bin/bash

if [ $# != 4 ]
then
    echo "You entered the wrong number of arguments, please try again"
    echo "enter 4 parameters from 1 - 6"
else
    export backNAME=$1
    export textNAME=$2
    export backTEXT=$3
    export textTEXT=$4
    
    chmod +x info.sh
    ./info.sh
fi