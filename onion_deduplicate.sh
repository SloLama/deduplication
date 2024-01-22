#!/bin/bash

# Deduplicate with onion, using low mem processing variant
# Usage: bash onion_deduplicate.sh input.vert output.vert

datapath=$1
inputfile=$2
outputfile=$3
ngram=9
threshold=0.9

filename=$(echo $inputfile | awk -F '/' '{print $NF}')
mkdir -p ${datapath}/tmp
hashgen -n $ngram -o ${datapath}/tmp/${filename}.n${ngram}.hashes. ${datapath}/${inputfile}
hashdup -o ${datapath}/tmp/${filename}.n${ngram}.dup_hashes ${datapath}/tmp/${filename}.n${ngram}.hashes.*
onion -sm -b 536870912 -n ${ngram} -t ${threshold} -f ${datapath}/tmp/${filename}.n${ngram}.dup_hashes ${datapath}/${inputfile} > ${datapath}/${outputfile}
