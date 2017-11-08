#!/bin/sh

#BSUB -P NRAL0008        # project code
#BSUB -W 08:00               # wall-clock time (hrs:mins)
#BSUB -n 1
#BSUB -R “span[ptile=1]”
#BSUB -q geyser
#BSUB -J average_2001            # job name
#BSUB -o /glade/u/home/theob/job_name.%J.out     # output file name in which %J is replaced by the job ID
#BSUB -e /glade/u/home/theob/job_name.%J.err     # error file name in which %J is replaced by the job ID

source /glade/u/apps/opt/lmod/4.2.1/init/bash
module purge
module load nco

year=2001
for month in {01,02,03,04,05,06,07,08,09,10,11,12}; do
for day in {01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31}; do
	
	echo "processing..."$year"-"$month"-"$day
	
	ncra /glade/scratch/gochis/Headwaters_files/CTRL/${year}/wrf2d_d01_${year}-${month}-${day}_*:00:00_thinned.nc /glade/scratch/theob/NCAR/${year}/wrf2d_d01_${year}-${month}-${day}_thinned.nc
	
done
done