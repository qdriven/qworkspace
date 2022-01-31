# WSL2 Tips


## Export and Import Ubunut 20.04 Subsystem

```sh
wsl --export Ubuntu-20.04 /mnt/d/workspace/Ubuntu-20.04.tar
wsl --unregister Ubunutu-20.04
wsl --import  Ubuntu-20.04 /mnt/d/workspace/  /mnt/d/workspace/Ubuntu-20.04.tar
```