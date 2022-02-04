#!/bin/sh

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138 0E98404D386FA1D9 \
DCC9EFBF77E11517 112695A0E562B32A 54404762BBB6E853

# for gradle
 curl -sSL https://rvm.io/mpapis.asc | gpg --import -    