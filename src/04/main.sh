#!/bin/bash

if [ $# != 0 ]
then
    echo "Invalid input!"
else
    source config.txt

    export backNAME=$column1_background
    export textNAME=$column1_font_color
    export backTEXT=$column2_background
    export textTEXT=$column2_font_color
    
    chmod +x info.sh
    ./info.sh
fi