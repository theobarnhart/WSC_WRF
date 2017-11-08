for fl in ~/Dropbox/virtual_share_win7/WSC_basins/HUC8/*.shp; do

filename=$(basename "$fl")
filename="${filename%.*}"

# for WRF CONUS Run
#gdalwarp -dstnodata -9999 -s_srs '+a=6370000 +b=6370000 +y_0=0 +lon_0=-98 +proj=lcc +x_0=0 +units=m +lat_2=50 +lat_1=28 +lat_0=39.7000122069' -t_srs '+a=6370000 +b=6370000 +y_0=0 +lon_0=-98 +proj=lcc +x_0=0 +units=m +lat_2=50 +lat_1=28 +lat_0=39.7000122069' -overwrite -cutline $fl -crop_to_cutline /Volumes/Users/Theo/projects/WSC_WRF/data/wrf_index_raster_sm.tif /Volumes/Users/Theo/projects/WSC_WRF/data/basin_index_rasters/${filename}.tif

# for WRF Headwaters Run
gdalwarp -dstnodata -9999 -s_srs '+a=6370000 +b=6370000 +y_0=0 +lon_0=-107 +proj=lcc +x_0=0 +units=m +lat_2=45 +lat_1=33 +lat_0=39.0000038147' -t_srs '+a=6370000 +b=6370000 +y_0=0 +lon_0=-107 +proj=lcc +x_0=0 +units=m +lat_2=45 +lat_1=33 +lat_0=39.0000038147' -overwrite -cutline $fl -crop_to_cutline /Volumes/Users/Theo/projects/WSC_WRF/data/WRF_headwaters_index_sm.tif /Volumes/Users/Theo/projects/WSC_WRF/data/basin_index_rasters/HW/${filename}.tif

#  '+a=6370000 +b=6370000 +y_0=0 +lon_0=-98 +proj=lcc +x_0=0 +units=m +lat_2=50 +lat_1=28 +lat_0=39.7000122069'
echo $fl
done
