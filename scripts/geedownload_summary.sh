
DATASET=s1grd-2022
CHIPSETS_FOLDER=/opt/earthdata/chipsets

python geedownload_chipsets.py summary --chipsets_folder $CHIPSETS_FOLDER --dataset $DATASET

