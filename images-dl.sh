#!/bin/bash
while IFS=, read -r col1 col2
do
    gsutil -m cp -r $col2 /data/kaggle/met/images/$col1
done < /data/kaggle/met/images.csv