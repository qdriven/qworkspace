
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
scoop update

## https://scoop.sh/#/
$env:SCOOP='d:\workspace\scoops'
[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
iwr -useb get.scoop.sh | iex
scoop update
iwr -useb https://gitee.com/glsnames/scoop-installer/raw/master/bin/install.ps1 | iex

scoop config SCOOP_REPO 'https://gitee.com/glsnames/scoop-installer'
scoop update
scoop install curl
scoop install oh-my-posh
scoop install ivaquero/scoopet/firacode-nf
scoop install gow

scoop install starship
code $PROFILE
Invoke-Expression (&starship init powershell)
scoop bucket add nerd-fonts
scoop install firacode-nf
scoop install alacritty
%APPDATA%\alacritty\alacritty.yml




