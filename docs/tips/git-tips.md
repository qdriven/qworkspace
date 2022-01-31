# Git Tips

Git tips in daily work. 

Every tip has a purpose, either to solve a problem or improve productivity.
So every tip need to answer following questions:
1. What problem to solve or what to improve
2. How to solve and how to improve?
3. Why it solved or improved? You can figure it out!

## submodule already exists in the index 

- When add to a submoule in a git repo, it failed because of already exists in the index
```sh
qworkspace$ git submodule add git@github.com:xxx/my-dotfiles.git
'my-dotfiles' already exists in the index
```
- How to Solve

```sh
git rm -r --cached my-dotfiles
git submodule add git@github.com:XXX/my-dotfiles.git
```