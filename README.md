# README

A working repo for scripts,snipptes, templates, or something else to Making Setting Environment Easier for tester.

- Visual Studio Code Setting
- idea setting
- python virtual environment setting
- golang environement setting 
- java/maven/gradle setting

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



## To Do List

- VS Code Plugin 
