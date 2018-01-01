#!/bin/bash
#https://github.com/ibrito

YOLD=`date +%Y`
YNEW=`date --date "next year" +%Y`

while [ $YOLD -lt $YNEW ]
do
    YOLD=`date +%Y`
    DIA=`date +"%d"`
    MES=`date +"%m"`

    echo `clear`
    echo $DIA"/"$MES"/"$YOLD
done

echo -e "\nBienvenido al Nuevo Año"
echo -e "\n***********************"
echo -e "\nFeliz Año Nuevo $YNEW"
echo -e "\n"`date`
