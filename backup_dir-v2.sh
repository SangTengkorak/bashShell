#!/usr/bin/env bash
# SangTengkorak
# March 22 2021

# Folders to backup
folback="/home/matjangkrik/bashfiles/gakaruan"
folback2="/home/matjangkrik/bashfiles/gakaruan2"
folback3="/home/matjangkrik/bashfiles/gakaruan3"

# Create backup name based on first foldername using rev and cut method
zfname=$(echo $folback | rev | cut -d'/' -f 1 | rev)
zfname2=$(echo $folback2 | rev | cut -d'/' -f 1 | rev)
zfname3=$(echo $folback3 | rev | cut -d'/' -f 1 | rev)

vaultfol="/home/matjangkrik/backups/$zfname.tar.gz"
vaultfol2="/home/matjangkrik/backups/$zfname2.tar.gz"
vaultfol3="/home/matjangkrik/backups/$zfname3.tar.gz"

#tar = Tape Archive tool for compression
#Creating same backup tar file for all specified folders
tar -czvf $vaultfol $folback
tar -czvf $vaultfol2 $folback2
tar -czvf $vaultfol3 $folback3
