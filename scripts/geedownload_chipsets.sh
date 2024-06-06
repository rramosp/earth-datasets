

DATASET=s1grd-2021
#DATASET=s2-2022
CHIPSETS_FOLDER=/opt/earthdata/chipsets

#gcloud config unset proxy/type
#gcloud config unset proxy/address
#gcloud config unset proxy/port


python geedownload_chipsets.py download --chipsets_folder $CHIPSETS_FOLDER --dataset $DATASET --shuffle_order
