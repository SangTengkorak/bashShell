#!/usr/bin/env bash
# SangTengkorak
# march 24 2021

shclock(){
  while true; do
  jam=$(date +'%R-%S')
  echo -en  "\r$jam"; sleep 1;
  done
}

shclock
