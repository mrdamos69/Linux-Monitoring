#!/bin/bash
function monitoring() {
  printf "HOSTNAME = $HOSTNAME\n"
  printf "TIMEZONE = $TIMEZONE\n"
  printf "USER = $USER\n"
  printf "OS = $OS\n"
  printf "DATE = $DATE\n"
  printf "UPTIME = $UPTIME\n"
  printf "UPTIME_SEC = $UPTIME_SEC\n"
  printf "IP = $IP\n"
  printf "MASK = $MASK\n"
  printf "GATEWAY = $GATEWAY\n"
  printf "RAM_TOTAL = $RAM_TOTAL GB\n"
  printf "RAM_USED = $RAM_USED GB\n"
  printf "RAM_FREE = $RAM_FREE GB\n"
  printf "SPACE_ROOT = $SPACE_ROOT GB\n"
  printf "SPACE_ROOT_USED = $SPACE_ROOT_USED GB\n"
  printf "SPACE_ROOT_FREE = $SPACE_ROOT_FREE GB\n"
}