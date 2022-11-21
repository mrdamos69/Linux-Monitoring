#!/bin/bash
#(1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black)
p1=$1
p2=$2
p3=$3
p4=$4

if [[ $p1 =~ $p2 ]]
then
  echo "ОШИБКА. Задайте цвета заного"
  echo "(1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black)"
  echo "<col_1 background> <col_1 font_color> <col_2 background> <col_1 font_color>"
  read -r p1 p2 p3 p4
fi

if [[ $p3 =~ $p4 ]]
then
  echo "ОШИБКА. Задайте цвета заного"
  echo "(1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black)"
  echo "<col_1 background> <col_1 font_color> <col_2 background> <col_1 font_color>"
  read -r p1 p2 p3 p4
fi

if [ $p1 = $p2 ] || [ $p3 = $p4 ]
then
  $bash . ./main.sh
  return
fi

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

case $p1 in
  "1" ) param_1=$fon_white;;
  "2" ) param_1=$fon_red;;
  "3" ) param_1=$fon_green;;
  "4" ) param_1=$fon_purple;;
  "5" ) param_1=$fon_blue;;
  "6" ) param_1=$fon_black;;
esac

case "$p2" in
  "1" ) param_2=$c_white;;
  "2" ) param_2=$c_red;;
  "3" ) param_2=$c_green;;
  "4" ) param_2=$c_purple;;
  "5" ) param_2=$c_blue;;
  "6" ) param_2=$c_black;;
esac

case "$p3" in
  "1" ) param_3=$fon_white;;
  "2" ) param_3=$fon_red;;
  "3" ) param_3=$fon_green;;
  "4" ) param_3=$fon_purple;;
  "5" ) param_3=$fon_blue;;
  "6" ) param_3=$fon_black;;
esac

case "$p4" in
  "1" ) param_4=$c_white;;
  "2" ) param_4=$c_red;;
  "3" ) param_4=$c_green;;
  "4" ) param_4=$c_purple;;
  "5" ) param_4=$c_blue;;
  "6" ) param_4=$c_black;;
esac

