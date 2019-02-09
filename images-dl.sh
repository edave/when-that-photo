#!/bin/bash
while IFS=, read -r col1 col2
do
    FILE=/data/kaggle/met/images/$col1.jpg
    if ! [ -f $FILE ]; then
    gsutil -m cp -r $col2 $FILE
    fi
done < /data/kaggle/met/images.csv