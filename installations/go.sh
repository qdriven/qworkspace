#!/bin/sh
VERSION="1.21"
# https://go.dev/dl/go1.18.linux-amd64.tar.gz
ARCH="linux-amd64"
curl -O -L "https://go.dev/dl/go{$VERSION}.{$ARCH}.tar.gz"
# "https://go.org/dl/go${VERSION}.linux-${ARCH}.tar.gz"
tar xvf go{$VERSION}.{$ARCH}.tar.gz
mv go ~/go


echo 'export PATH=$HOME/go/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
