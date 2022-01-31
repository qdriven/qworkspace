#!/bin/sh

# sudo apt-get install zsh
# chsh -s $(which zsh)
sh ./install.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ZSH_CUSTOM="/home/patrick/.oh-my-zsh/custom"
## install zsh auto-suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
