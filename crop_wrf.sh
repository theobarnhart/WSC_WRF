#!/bin/sh

#BSUB -P P48500028        # project code
#BSUB -W 24:00               # wall-clock time (hrs:mins)
#BSUB -n 1
#BSUB -R "span[ptile=1]"
#BSUB -q geyser
#BSUB -J clip_2001            # job name
#BSUB -o /glade/u/home/theob/clip_2001.%J.out     # output file name in which %J is replaced by the job ID
#BSUB -e /glade/u/home/theob/average_2001.%J.err     # error file name in which %J is replaced by the job ID

source /glade/u/apps/opt/lmod/4.2.1/init/bash
module purge
module load nco

# set year
year=2001

# set clip extents
xmin=333
xmax=578
ymin=309
ymax=659

cd /glade/scratch/theob/averages/${year}/

ls -1 wrf2d*00_thinned.nc > croplist.${year}.txt # generate list of files to loop through

for i in `cat croplist.${year}.txt`; do
	echo "Cropping..."$i
	
	filename="${i%.*}"
	
	ncks -d south_north,$ymin,$ymax -d west_east,$xmin,$xmax $i ${filename}_crop.nc 
	
done

rm croplist.${year}.txt