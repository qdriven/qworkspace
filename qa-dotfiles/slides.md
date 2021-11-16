
Title: Build Own Alias
output: alias/index.html
controls: true
--

# Build Own Alias

Productivity: Do not repeat yourself!

--

## Let's do it in MAC

- Mark a .workpace folder in your $HOME
- Write Scripts in your .workspace folder
- Store your scripts in ~/.workspace/script folder
- export *** ~/.workspace/script *** to your PATH
```sh
export PATH=$PATH:~/.workspace/script
```

--

## Example
Fetch a PID number
- script: 
```sh
ps aux | grep $1 | grep -v grep | awk '{print $2}'
```
- put script into a file than move to ~/.workspace/script
- run in shell
```sh
❯ git_pid java
56028
```

DONE!