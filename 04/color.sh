#!/bin/bash
. ./read_file.sh

#(1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black)

c_default='\e[0m'

c_white='\033[1;97m'
c_red='\033[1;91m'
c_green='\033[1;92m'
c_blue='\033[1;94m'
c_purple='\033[1;95m'
c_black='\033[30m'

fon_white="${c_white}\033[107m"
fon_red="${c_red}\033[101m"
fon_green="${c_green}\033[102m"
fon_blue="${c_blue}\033[44m"
fon_purple="${c_purple}\033[105m"
fon_black="${c_black}\033[40m"

if ! [[ "${array[0]}" = "" || "${array[1]}" = "" || "${array[2]}" = "" || "${array[3]}" = "" ]]
then
  p1=${array[0]}
  p2=${array[1]}
  p3=${array[2]}
  p4=${array[3]}
fi

case $p1 in
  "1" ) param_1=$fon_white color_1="white";;
  "2" ) param_1=$fon_red color_1="red";;
  "3" ) param_1=$fon_green color_1="green";;
  "4" ) param_1=$fon_purple color_1="purple";;
  "5" ) param_1=$fon_blue color_1="blue";;
  "6" ) param_1=$fon_black color_1="black";;
esac

case "$p2" in
  "1" ) param_2=$c_white color_2="white";;
  "2" ) param_2=$c_red color_2="red";;
  "3" ) param_2=$c_green color_2="green";;
  "4" ) param_2=$c_purple color_2="purple";;
  "5" ) param_2=$c_blue color_2="blue";;
  "6" ) param_2=$c_black color_2="black";;
esac

case "$p3" in
  "1" ) param_3=$fon_white color_3="white";;
  "2" ) param_3=$fon_red color_3="red";;
  "3" ) param_3=$fon_green color_3="green";;
  "4" ) param_3=$fon_purple color_3="purple";;
  "5" ) param_3=$fon_blue color_3="blue";;
  "6" ) param_3=$fon_black color_3="black";;
esac

case "$p4" in
  "1" ) param_4=$c_white color_4="white";;
  "2" ) param_4=$c_red color_4="red";;
  "3" ) param_4=$c_green color_4="green";;
  "4" ) param_4=$c_purple color_4="purple";;
  "5" ) param_4=$c_blue color_4="blue";;
  "6" ) param_4=$c_black color_4="black";;
esac
