#! /bin/sh

MODULE_FOLDER=$1
cd ${MODULE_FOLDER}
get_git_url(){
    cat .git/config |grep url | awk '{print $3}'
}
github_url=`get_git_url`
echo "current folder's github url is "${github_url}
cd ..
git submodule add ${github_url} ${MODULE_FOLDER}