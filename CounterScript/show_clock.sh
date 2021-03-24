#!/usr/bin/env bash
# SangTengkorak
# march 24 2021

shclock(){
  while true; do
  jam=$(date +'%R-%S')
  echo -en  "\r$jam\t"; sleep 1;
  done
}
#-n     do not output the trailing newline
#-e     enable interpretation of backslash escapes
#\r     carriage return
