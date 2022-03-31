#!/bin/sh
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update 
sudo apt install python3.10
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 2

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py

## setup for python3 in zshrc
## install poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
