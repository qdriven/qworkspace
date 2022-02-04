#!/bin/sh
sudo apt-get update --fix-missing

sudo apt install openjdk-17-jdk
sudo apt install openjdk-11-jdk

sudo apt get install gpg2 
sudo apt get install unzip

GRADLE_VERSION="7.3.3"
wget https://downloads.gradle-dn.com/distributions/gradle-${GRADLE_VERSION}-all.zip -P /tmp
MAVEN_VERSION="3.8.4"
wget https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-${MAVEN_VERSION}-bin.zip -P /tmp
