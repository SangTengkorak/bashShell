#!/usr/bin/env bash
# SangTengkorak
# March 25 2021

sim_calc(){
  read -p "How much is your number : " a
  read -p "How many percent you want to share : " b
  c=$((($a / 100)*$b))
}
