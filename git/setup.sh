#!/bin/sh
git config --global http.sslVerify "false"
git config --global core.compression 0
git config --global http.postBuffer 1048576000



##
ssh-keygen -t rsa -C "your_email@example.com"