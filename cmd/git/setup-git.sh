#!/bin/sh
# TODO: check the current folder
CURR_PATH=`pwd`
cp ~/.workspace/git/.gitignore ${CURR_PATH}
cp ~/.workspace/git/.gitattributes ${CURR_PATH}
git config --global init.defaultBranch main

# cd `pwd`
# curl https://gitee.com/qmeta/qworkspace/raw/master/git/.gitignore -o .gitignore
# curl https://gitee.com/qmeta/qworkspace/raw/master/git/.gitattributes -o .gitattribute
