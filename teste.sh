#!/bin/bash


GH_TOKEN=$GH_TOKEN



REPO=$(curl -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $GH_TOKEN" "https://api.github.com/users/cadu1982/repos" | awk '/"name"/ {print $2}' | sed -e 's/\"//g' | sed -e 's/\,//g')

for names in $REPO
do
  curl -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $GH_TOKEN " https://api.github.com/repos/cadu1982/$names/branches
done