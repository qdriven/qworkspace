#! /bin/sh

git add .
git commit -m "$1"

remotes=`git remote`
for remote in ${remotes}
do
    git push ${remote} master
done