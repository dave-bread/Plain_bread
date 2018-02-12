#!/bin/bash

#access.logの日付のフォーマットで検索

i=0
DATE='12/May/2014'
FILE='access.log'

for ((i=0; i<23; i++))
do
  echo "[${DATE}:${i}:00]" >> test.log
  
  for ((j=0; j<6 j++))
  do
    tmp=`grep 12/May/2014:${i}:${j} $FILE | wc -l`
    echo "- ${DATE}:${i}:${j}0   $tmp" >> test.log
  done
done