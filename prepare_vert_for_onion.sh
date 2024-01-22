#!/bin/bash
# Converts already prepared vert files for Onion (replaces text with doc) and removes paragraph IDs

datapath=$1
infile=$2
outfile=$3

cat ${datapath}/${infile} | sed 's/<text/<doc/g;s|</text>|</doc>|g' > ${datapath}/${outfile}
