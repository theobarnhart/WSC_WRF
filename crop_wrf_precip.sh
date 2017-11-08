#!/bin/sh

#BSUB -P P48500028        # project code
#BSUB -W 24:00               # wall-clock time (hrs:mins)
#BSUB -n 1
#BSUB -R "span[ptile=1]"
#BSUB -q geyser
#BSUB -J cp2001            # job name
#BSUB -o /glade/u/home/theob/cp_2001.%J.out     # output file name in which %J is replaced by the job ID
#BSUB -e /glade/u/home/theob/cp_2001.%J.err     # error file name in which %J is replaced by the job ID
#BSUB -N theodore.barnhart@colorado.edu # email notification 

#source /glade/u/apps/opt/lmod/4.2.1/init/bash
#module purge
#module load nco

# set clip extents
xmin=333
xmax=578
ymin=309
ymax=659

cd /Volumes/data/wrf/precip/monthly

# set year
for year in {2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013}; do

ls -1 /Volumes/data/wrf/precip/monthly/*${year}*.nc > ./croplist.${year}.txt # generate list of files to loop through

for i in `cat croplist.${year}.txt`; do
	echo "Cropping..."$i >> /Volumes/Users/Theo/projects/WSC_WRF/p_crop.out
	
	filename="${i%.*}"
	
	ncks -O -d south_north,$ymin,$ymax -d west_east,$xmin,$xmax $i ${filename}_crop.nc 
	
done
rm ./croplist.${year}.txt
done