#!/bin/sh
#
# Project : CONUS-HYDRO
#
#BSUB -P P48500028                     # Project 99999999
#BSUB -n 1                             # number of total (MPI) tasks
#BSUB -R "span[ptile=1]"               # run a max of 16 tasks per node
#BSUB -J thin_wrfhw_pgw                    # job name
#BSUB -o /glade/scratch/theob/NCAR/%J.out              # output filename
#BSUB -e /glade/scratch/theob/NCAR/%J.err              # error filename
#BSUB -W 24:00                          # wallclock time
#BSUB -q geyser                          # queue
#BSUB -N theodore.barnhart@colorado.edu                # email notification

#################################################################
# Script to batch thin LDASOUT file...
# Usage: ./batch_nco_wrfout2d_thinner.sh
# Developed: 12/29/2015, D. Gochis
# NOTE: This script will NOT automatically erase source files...
#       BE SURE to confirm outputs before erasing source files...
#################################################################

module load nco

cd scratch/NCAR/CTRL/

ncra wrfout_d01_2007-12-05_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-05_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-06_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-06_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-07_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-07_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-10_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-10_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-11_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-11_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-12_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-12_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-13_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-13_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-14_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-14_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-15_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-15_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-16_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-16_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-17_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-17_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-18_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-18_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-19_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-19_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-20_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-20_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-21_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-21_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-22_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-22_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-23_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-23_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-24_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-24_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-25_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-25_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-26_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-26_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-27_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-27_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-28_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-28_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-29_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-29_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-30_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-30_00:00:00.nc_thinned_ave.nc
ncra wrfout_d01_2007-12-31_00:00:00.nc ../missing_CTRL/wrfout_d01_2007-12-31_00:00:00.nc_thinned_ave.nc