

MAVEN_VERSION=3.8.5
# curl -LO https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.tar.gz
# curl -LO https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz
wget https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz
tar zvf apache-maven-${MAVEN_VERSION}-bin.tar.gz
mkdir -p ~/.qworkspace
mv apache-maven-${MAVEN_VERSION}-bin ~/.qworkspace

echo 'export MAVEN_HOME=~/.qworkspace/apache-maven-${MAVEN_VERSION}-bin' >> ~/.zshrc
echo 'export PATH= $MAVEN_HOME:$PATH' >> ~/.zshrc

