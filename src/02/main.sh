#!/bin/bash

if [ $# != 0 ]
then
    echo "Invalid input!"
else
    chmod +x info.sh
    ./info.sh

    chmod +x logs.sh
    ./logs.sh
fi