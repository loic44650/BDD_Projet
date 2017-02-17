#!/bin/bash

#http://stackoverflow.com/questions/2129123/rearrange-columns-using-cut
usage_advice="usage: $0 fichier.csv nom_table liste_attributs"

if [ $# -le 2 ]
then
    echo $usage_advice
    exit
fi

if [ ! -r $1 ]
then
    echo "impossible de lire $1"
    exit
else
    fichier=$1
    shift
fi

table_name=$1
shift

#traitement des attributs
while [ $# -gt 0 ]
do
    position=$(head -n 1 tableau.csv | tr ';' '\n' | grep -n "^\s*$1\s*$" | cut -f1 -d:)
#    echo $1 en position $position
    awk_accumulator="$awk_accumulator, \", \", \$$position"
    accumulator="$accumulator,$position"
    shift
done
#removing the first comma. welcome to bash hell
accumulator=${accumulator:1:${#accumulator}-1}
awk_accumulator=${awk_accumulator:7:${#awk_accumulator}-1}

awk_script="{print($awk_accumulator)}"
#echo "awk_accumulator = $awk_accumulator"

#does not reorder fields
#tail -n +2 $fichier | cut -d ';' -f $accumulator | sort -u


#tail -n +2 $fichier | awk -F ';' '{print($2,"\t",$1)}'
#echo "script : $awk_script"
tail -n +2 $fichier | awk -F ';' "$awk_script" | sort -gu | sed -e "s/[a-zA-Z]+/\'&\'/g"
# -e "s/.*/INSERT INTO $table_name Values (&);/"

#echo "all done : $accumulator"
