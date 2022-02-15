#!/bin/sh

WORKSPACE=`pwd`

echo "export WSPACE=\"`pwd`\"" >> ~/.zshrc
echo "export PATH=$PATH:${WSPACE}/cmd" >> ~/.zshrc