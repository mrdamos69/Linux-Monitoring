#!/bin/bash

array=(0 0 0 0)
value=0

while read temp_str
do
    echo $temp_str > temp
    var=$(grep -o [1-6] temp)
    array[value]=${var[@]:2}
    ((value+=1))
done < ./config.conf
rm ./temp
