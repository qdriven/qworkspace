## wsl -l -v --all

wsl --export Ubuntu-20.04 /mnt/d/workspace/Ubuntu-20.04.tar
wsl --unregister Ubunutu-20.04
wsl --import  Ubuntu-20.04 /mnt/d/workspace/  /mnt/d/workspace/Ubuntu-20.04.tar