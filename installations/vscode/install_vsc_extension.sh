#! /bin/sh

echo "for install visual studio code extension ....."

echo "install extension command is: code --install-extension publisher.extension"

pkglist=(
<<<<<<< HEAD
  ms-python.python
  eamodio.gitlens
  formulahendry.code-runner
  akamud.vscode-theme-onedark
  ms-azuretools.vscode-docker
  dracula-theme.theme-dracula
  ## markdown
  yzhang.markdown-all-in-one
  shd101wyy.markdown-preview-enhanced
  vscode-icons-team.vscode-icons
  ## git
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done


=======
  ms-python.python  ## python
  eamodio.gitlens   ## gitlens
  ms-azuretools.vscode-docker  ## Docker Plugin
  formulahendry.code-runner

  esbenp.prettier-vscode  ## Pretty Code
)
code --install-extension ms-python.python
for package in ${pkglist[@]};do
  echo "ready to install $package"
  code --install-extension $package
done
>>>>>>> e2555c90db647d3824ae20c03e5b127f9e2de443
## code --install-extension publisher.extension
# examples for installing extension in a bash
# Visual Studio Code :: Package list
# pkglist=(
# ms-vscode.cpptools
# ms-python.python
# vscodevim.vim
# kelvin.vscode-sshfs
# letmaik.git-tree-compare
# donjayamanne.githistory
# eamodio.gitlens
# coenraads.bracket-pair-colorizer
# shardulm94.trailing-spaces
# robertohuertasm.vscode-icons
# yzane.markdown-pdf
# ics.japanese-proofreading
# platformio.platformio-ide
# )

# for i in ${pkglist[@]}; do
#   code --install-extension $i
# done

# code --install-extension alexdima.copy-relative-path
# code --install-extension alexkrechik.cucumberautocomplete
# code --install-extension dariofuzinato.vue-peek
# code --install-extension EditorConfig.EditorConfig
# code --install-extension justusadam.language-haskell
# code --install-extension mikestead.dotenv
# code --install-extension mjmcloug.vscode-elixir
# code --install-extension ms-python.python
# code --install-extension ms-vscode.sublime-keybindings
# code --install-extension octref.vetur
# code --install-extension pnp.polacode
# code --install-extension rust-lang.rust
# code --install-extension stevejpurves.cucumber
# code --install-extension teabyii.ayu