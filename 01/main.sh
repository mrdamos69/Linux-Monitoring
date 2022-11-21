#!/bin/bash

if [[ $# == 1 ]]
then
  if [[ $1 =~ ^[0-9]+$ ]] || [[ $1 = "" ]]
  then
    echo "ERROR"
  else
    echo "$1"
  fi
else
  echo "ERROR"
fi
