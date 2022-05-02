#!/bin/sh

# install pip
python3 get-pip.py

pip3 install poetry -U
cp pip.conf ~/.pip