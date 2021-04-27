#!/bin/sh

GIT_USER=`jq .git_user_name local_config.json`
GIT_EMAIL=`jq .git_user_email local_config.json`
echo $GIT_EMAIL $GIT_USER

git config user.name $GIT_USER
git config user.email $GIT_EMAIL