#!/bin/bash

NUMBER=25

#-gt -> grater than
#-lt -> less than
#-eq -> equal to
#-ne -> not equal to
if [ $NUMBER -lt 20 ]; then
    echo " $NUMBER is greater than 20"
fi
if [ $NUMBER -gt 20 ]; then
    echo " $NUMBER is less than 20"
fi