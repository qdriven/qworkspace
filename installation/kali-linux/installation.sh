sudo apt-get upgrade
sudo apt update && sudo apt install kali-win-kex
sudo apt install kali-linux-default
sudo apt install git -y
sudo apt install golang -y
sudo apt install python -y
sudo apt install java -y
sudo apt install nodejs -y
sudo apt-get install fcitx
sudo apt install kali-linux-default
# sudo apt install kali-linux-large
git config core.autocrlf true


## install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp -f .zshrc ~/.zshrc


## tools to  install
 pip3 install thefuck --user

 ## fuzzy search
 git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
 ~/.fzf/install

## thop and top alternative
curl -L https://bit.ly/glances | /bin/bash
## or install in python
pip install glances

## sz and rz

## install zoxide which is empowered by rust
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

## theme
export OXIDIZER=$HOME/oxidizer
git clone --depth=1 https://github.com/ivaquero/oxidizer.sh.git $OXIDIZER
bash $OXIDIZER/install.sh

## install rust
