#!/bin/bash

read -p "Do you want save output in file? (y, n)" answer

if [[ $answer == Y || $answer == y ]];
    then
        name="$(date +"%d_%m_%y_%H_%M_%SS").status"
        ./print.sh > $name
fi