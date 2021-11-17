# README

A working repo for scripts,snipptes, templates, or something else to Making Setting Environment Easier for tester.

- shell scirpts
- Visual Studio Code Setting
- idea setting
- python virtual environment setting
- golang environement setting 
- java/maven/gradle setting

[cheatsheet](cheat-sheet.md)
## How to use this repo

Add as git submodule in your git repo 

```sh
git submodule add https://github.com/qdriven/qworkspace.git .qworkspace
```
## Git .gitignore/.gitattributes template

```sh
sh .qworkspace/git/fetch_attribues.sh
```

Then all the gitignore/gitattributes file is added into your projects


## Visual Studio Code Setting

```sh
cp -f .qworkspace/vscode/setting.json ./vscode
```

## Java MAVEN/GADLE Setting for MAVEN/GRADLE Slow issue in China

```sh
sh java/maven_gradle_setting.sh
```


## Use ```jq``` and json file as configuration

```sh
jq <json-path> <configuration-file-path>
```


