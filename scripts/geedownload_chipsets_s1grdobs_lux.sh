

CHIPSETS_FOLDER=/opt/earthdata/chipsets

AOI='--aoi lux'

for year in 2023 2022 2021 2020 2019 2018 2017
do
    for month in 01 02 03 04 05 06 07 08 09 10 11 12
    do
        DATASET=s1grdobs-$year$month
        python geedownload_chipsets.py download --chipsets_folder $CHIPSETS_FOLDER --dataset $DATASET $AOI --shuffle_order
    done
done

