#!/usr/bin/env bash
  2 # SangTengkorak
  3 # March 31 2021
  4 
  5 # Assing the file name
  6 read -p "What is the file name? " filename
  7 
  8 # Take the search string
  9 read -p "Enter the search string : " s_string
 10 
 11 # Take the replace string
 12 read -p "Enter the replace string : " r_string
 13 
 14 if [[ $s_string != "" &&  $r_string != "" ]]; then
 15         sed -i "s/$s_string/$r_string/" $filename
 16 fi
