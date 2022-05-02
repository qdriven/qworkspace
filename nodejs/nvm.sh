#!/bin/sh

## install nvm 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
ls ~/.nvm

# add to profile
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

## install
nvm install node
nvm install latest

## list version
nvm ls-remote
# nvm use node
nvm install --lts
# nvm install 'lts/*' --reinstall-packages-from=current
# nvm install node --reinstall-packages-from=node

