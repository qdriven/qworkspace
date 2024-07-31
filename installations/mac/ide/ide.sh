brew install alacritty
mkdir -p ~/.config/alacritty/
cp alacritty.yaml ~/.config/alacritty/
brew tap homebrew/cask-fonts
brew install font-fira-code-nerd-font

brew install zellij
cp zellij.yaml ~/.config/zellij/config.yaml
cp zellij-layout.yaml ~/.config/zellij/layouts/default.yaml

# https://docs.helix-editor.com/title-page.html