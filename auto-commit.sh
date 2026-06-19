#!/bin/bash
set -exo
d=$(date +"%Y-%m-%dT%H:%M:%S")
git status
git pull
git add .
git commit -m "auto update $d"
git push