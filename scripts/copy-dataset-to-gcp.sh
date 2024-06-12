DATASET=s1grd-2022
BASEDIR=/opt/earthdata/chipsets
DESTGCP=gs://2024-esl-sar-fm-data/earthdata/chipsets

cd $BASEDIR
FILES=`ls -d */`
for i in $FILES;
do 
   gsutil -m cp -r -nc $i/$DATASET* $DESTGCP/$i
done
cd -


