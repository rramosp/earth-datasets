

CHIPSETS_FOLDER=/opt/earthdata/chipsets

DATASET=s1grd-2019
#DATASET=s2-2022

#DATASET=s1count-2017
#PIXELS_LONLAT='--pixels_lonlat [32,32]'

#DATASET=s1grdobs-202201-asc
#AOI='--aoi lux'

python geedownload_chipsets.py download --chipsets_folder $CHIPSETS_FOLDER --dataset $DATASET $AOI $PIXELS_LONLAT --shuffle_order
