# WSL2 说明

安装WSL2,必须运行 Windows 10 版本 2004 及更高版本（内部版本 19041 及更高版本）或 Windows 11。


## 安装WSL2

打开powershell,windows的终端
![img](https://docs.microsoft.com/zh-cn/windows/wsl/media/wsl-install.png)

运行如下命令:
```sh
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

```
```sh
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

wsl --install -d Ubuntu
wsl --set-default-version 2
```

通过以上命令就实现了wsl2的安装


## 修改WSL2 linux 安装的路径

修改Linux路径，实际上分为三步:
1. export 之前安装的Ubunu到分C盘路径
2. unregister ubuntu
3. import 导出的Ubuntu 文件

```sh
## export wsl sub system to D 
wsl --export Ubuntu D:\wsl\Ubuntu.tar
wsl --unregister Ubuntu


## import wsl

wsl --import Ubuntu d:\wsl\Ubuntu.tar
wsl -l -v
wsl --set-version Ubuntu 2
```


## 安装其他Linux发行版本

```sh

```