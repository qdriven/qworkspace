#!/bin/sh

# https://github.com/github/gitignore
# https://github.com/JetBrains/idea-gitignore.git
cd `pwd`
curl https://gitee.com/qmeta/qworkspace/raw/master/git/.gitignore -o .gitignore
curl https://gitee.com/qmeta/qworkspace/raw/master/git/.gitattributes -o .gitattributes