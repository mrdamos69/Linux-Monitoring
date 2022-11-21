#!/bin/bash
export start=$(date +%s%N)

. ./func.sh

TOTAL_NUM_FOLDER=`sudo find $1 -type d | wc -l`
TOP_5_FOLDERS=`sudo du -h $1 | sort -rh | head -5 | cat -n | awk '{print $1 " - " $3 ", " $2}'`
TOTAL_NUM_FILE=`sudo find $1 -type f -exec ls -l {} \; | wc -l`
CONFIG_FILE=`sudo find $1 -type f -exec ls -l {} \; | grep ".conf$" | wc -l`
TEXT=`sudo find $1 -type f -exec ls -l {} \; | grep ".txt$" | wc -l`
EXECUTABLE=`sudo find $1 -type f -perm /a=x | wc -l`
LOG=`sudo find $1 -type f -exec ls -l {} \; | grep ".log$" | wc -l`
ARCHIVE=`sudo find $1 -type f -name "*.zip" -o -name "*.7z" -o -name "*.rar" -o -name "*.tar" | wc -l`
SYMBOLIC=`ls -la $1 | grep "^l" | wc -l`
TOP_10_FILES=`sudo find $1 -type f -exec du -h {} \; | sort -rh | head -10 | cat -n | awk '{print $1 " - " $3 ", " $2}'`

COUNT=`sudo find $1 -type f -perm /a=x -exec du -h {} \; | sort -rh | head -10 | cat -n | awk '{print $1}'`
NAME=`sudo find $1 -type f -perm /a=x -exec du -h {} \; | sort -rh | head -10 | cat -n | awk '{print $3}'`
MEM=`sudo find $1 -type f -perm /a=x -exec du -h {} \; | sort -rh | head -10 | cat -n | awk '{print $2}'`
SUM=`sudo find $1 -type f -exec md5sum {} \; | sort -rh | head -10 | awk '{print $1}'`

array_count=($COUNT)
array_name=($NAME)
array_mem=($MEM)
array_sum=($SUM)
end=$(date +%s%N)
sec=$(($end - $start))
secw=`echo "scale=3; $sec / 1000000000"| bc`

print
