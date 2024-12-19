#!/bin/bash

if [[ $(which w2vgrep) ]]; then
    echo "Found w2vgrep installation, using that for search..."
    
else
    echo "No w2vgrep installation found, using regular grep for search..."
    grep -r $1
fi
