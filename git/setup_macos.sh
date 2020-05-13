#! /bin/sh

brew install gh

## config github
git configure --global user.name $1
git configure --global user.email $2
