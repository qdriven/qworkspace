#! /bin/sh
COMMENTS=$1
git add .
git commit -m "${COMMENTS}"
# git push -u origin master
git push --recurse-submodules