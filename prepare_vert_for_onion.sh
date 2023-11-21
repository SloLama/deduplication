#!/bin/bash
# Converts already prepared vert files for Onion (replaces text with doc) and removes paragraph IDs

infile=$1
outfile=$2

cat $infile | sed 's/<text/<doc/g;s|</text>|</doc>|g' > $outfile
