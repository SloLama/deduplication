#!/bin/bash

datapath=$1
f_out=$2
cat ${datapath}/*.vert > ${datapath}/${f_out}
