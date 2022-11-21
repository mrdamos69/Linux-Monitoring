#!/bin/bash
. ./func.sh

HOSTNAME=$(</etc/hostname)
TIMEZONE=$(timedatectl | awk '/Time zone/ { print $3,$4,$5 }' )
USER=$(users)
OS=$(lsb_release -a | awk '/Description:/ { print $2,$3,$4 }' )
DATE=$(date "+%d %b %Y %H:%M:%S")
UPTIME=$(uptime -p | awk '{ print $2,$3,$4,$5 }')
UPTIME_SEC=$(uptime -s)
IP=$(/sbin/ifconfig | awk '/broadcast/ { printf $2 }')
MASK=$(/sbin/ifconfig | awk '/broadcast/ { print $4 }')
GATEWAY=$(/sbin/ip route | awk '/default/ { print $3 }')
RAM_TOTAL=$(free -m | awk '/Mem:/ { printf "%.3f", $2/1024 }')
RAM_USED=$(free -m | awk '/Mem:/ { printf "%.3f", $3/1024 }')
RAM_FREE=$(free -m | awk '/Mem:/ { printf "%.3f", $4/1024 }')
SPACE_ROOT=$(df /root/ | awk '/dev/ { printf "%.3f", $2/1024 }')
SPACE_ROOT_USED=$(df /root/ | awk '/dev/ { printf "%.3f", $3/1024 }')
SPACE_ROOT_FREE=$(df /root/ | awk '/dev/ { printf "%.3f", $4/1024 }')

monitoring

read -p "Загрузить информацию в файл? (yes / no)" menu
if [ "$menu" = "yes" ] || [ "$menu" = "YES" ] || [ "$menu" = "Y" ] || [ "$menu" = "y" ]
then
    date=$(date "+%d_%m_%y_%H_%M_%S")
    name="$date.status"
    monitoring >> $name
fi
