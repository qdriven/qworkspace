#!/bin/sh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# sh install.sh
ZSH_CUSTOM="${HOME}/.oh-my-zsh/custom"
echo ${ZSH_CUSTOM}

# plugins
echo "install oh-my-zsh plugins" 
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions --depth=1

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting --depth=1
# git clone  https://github.com/zpm-zsh/material-colors.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/material-colors --depth=1
# git clone  https://github.com/zpm-zsh/colors.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/colors --depth=1
# git clone  https://github.com/zdharma/history-search-multi-word.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/history-search-multi-word --depth=1


# themes
echo "install oh-my-zsh themes"
sudo apt-get install fonts-powerline

git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

git clone https://github.com/denysdovhan/spaceship-prompt.git " ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt" --depth=1
ln -s "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme" "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme"

