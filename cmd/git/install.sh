# install scripts

echo `pwd`
SCRIPT_HOME=`pwd`
echo "alias gcm=\"sh $SCRIPT_HOME/git_commit.sh\"" >> ~/.zshrc

echo "alias gs=\"sh $SCRIPT_HOME/git/git_setup.sh\"" >>~/.zshrc

source ~/.zshrc