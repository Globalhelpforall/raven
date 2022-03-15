#!/bin/bash

if [ "$1" != "" ]; then
    OURFILE="$1"
    echo "Running RAVEN for $OURFILE..."
else
    echo "No xml filename provided. Running test_FTmodel.xml..."
    OURFILE=test_FTmodel.xml
fi

docker run --rm -it aswin1906/raven:1.0 bash raven_framework ./plugins/SR2ML/tests/$OURFILE
