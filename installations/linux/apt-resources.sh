#!/bin/sh
## append tsinghua source
sudo apt-get update
sudo apt-get install ca-certificates
sudo chmod 777 /etc/apt/sources.list
sudo cp /etc/apt/sources.list /etc/apt/sources.list_bnk
cat sources.list >> /etc/apt/sources.list
sudo apt-get update


## install ubuntu brew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

