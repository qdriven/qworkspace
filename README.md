# README

A working repo for scripts,snipptes, templates, or something else to Making Setting Environment Easier for tester.


## Useful Script

- push git commit in shell
```sh
#!/bin/zsh

echo `pwd`
CURR_DIR=`pwd`
cd ${CURR_DIR}
git add .
git commit -m $1
fgit push
```

- get pid

```sh
#!/bin/sh
ps aux | grep $1 | grep -v grep | awk '{print $2}'
```

- get github repo url
```sh
#!/bin/sh
cat .git/config | grep url | awk '{ print $3 }'
```
- github markdown file as issue

```sh
#!/bin/sh
TITLE=$1
FILE_NAME=$2
CONTENT=`cat ${FILE_NAME}`
echo ${TITLE}
echo ${CONTENT}
gh issue create --title "${TITLE}" --body "${CONTENT}"
```

## Project templates

Moved to [qfluent-ops](https://github.com/fluent-qa/qfluent-ops.git)
Help to use cli app:

```sh
fluent starter -h
```

```sh
fluent start java,ts-lib,mono,python

Usage:
  fluent starter [flags]

Examples:
fluent start java

Flags:
  -h, --help   help for starter
```

## Some other installations
