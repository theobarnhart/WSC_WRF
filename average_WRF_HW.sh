#!/bin/bash

cd /Volumes/data/wrf/HW/PGW


ls *_thinned.nc > ./junklist.txt

echo "starting processing"

for fl in `cat junklist.txt`; do
	
	name="${fl%.*}" # strip off the extension
	
	ncra $fl ${name}_ave.nc
	
	echo "processing "${fl}
	
done

rm junklist.txt 
