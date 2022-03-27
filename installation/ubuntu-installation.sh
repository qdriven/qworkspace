#!/bin/sh
sudo apt-get update --fix-missing

sudo apt install openjdk-17-jdk
# sudo apt install openjdk-11-jdk

sudo apt get install gpg2 
sudo apt get install unzip

GRADLE_VERSION="7.3.3"
wget https://downloads.gradle-dn.com/distributions/gradle-${GRADLE_VERSION}-all.zip -P /tmp
MAVEN_VERSION="3.8.4"
wget https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-${MAVEN_VERSION}-bin.zip -P /tmp

## install gh-cli


curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

## install others