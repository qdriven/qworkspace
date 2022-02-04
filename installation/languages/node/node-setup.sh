#!/bin/sh

## install nvm
sh nvm.sh
## install other global scripts
curl -fsSL https://get.pnpm.io/install.sh | sh -
npx pnpm add -g pnpm
pnpm add -g pnpm


yarn config set registry <>
npm config set registry  <>
