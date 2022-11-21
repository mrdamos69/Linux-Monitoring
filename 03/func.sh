#!/bin/bash
. ./color.sh
function monitoring() {
  printf "${param_1}${param_2}HOSTNAME ${param_3}${param_4}= $HOSTNAME${c_default}\n"
  printf "${param_1}${param_2}TIMEZONE ${param_3}${param_4}= $TIMEZONE${c_default}\n"
  printf "${param_1}${param_2}USER ${param_3}${param_4}= $USER${c_default}${c_default}\n"
  printf "${param_1}${param_2}OS ${param_3}${param_4}= $OS${c_default}${c_default}\n"
  printf "${param_1}${param_2}DATE ${param_3}${param_4}= $DATE${c_default}\n"
  printf "${param_1}${param_2}UPTIME ${param_3}${param_4}= $UPTIME${c_default}\n"
  printf "${param_1}${param_2}UPTIME_SEC ${param_3}${param_4}= $UPTIME_SEC${c_default}\n"
  printf "${param_1}${param_2}IP ${param_3}${param_4}= $IP${c_default}\n"
  printf "${param_1}${param_2}MASK ${param_3}${param_4}= $MASK${c_default}\n"
  printf "${param_1}${param_2}GATEWAY ${param_3}${param_4}= $GATEWAY${c_default}\n"
  printf "${param_1}${param_2}RAM_TOTAL ${param_3}${param_4}= $RAM_TOTAL GB${c_default}\n"
  printf "${param_1}${param_2}RAM_USED ${param_3}${param_4}= $RAM_USED GB${c_default}\n"
  printf "${param_1}${param_1}RAM_FREE ${param_3}${param_4}= $RAM_FREE GB${c_default}\n"
  printf "${param_1}${param_2}SPACE_ROOT ${param_3}${param_4}= $SPACE_ROOT GB${c_default}\n"
  printf "${param_1}${param_2}SPACE_ROOT_USED ${param_3}${param_4}= $SPACE_ROOT_USED GB${c_default}\n"
  printf "${param_1}${param_2}SPACE_ROOT_FREE ${param_3}${param_4}= $SPACE_ROOT_FREE GB${c_default}\n\n"
}
