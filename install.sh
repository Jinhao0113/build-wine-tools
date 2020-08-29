#!/bin/bash


# 安装依赖
sudo apt update
sudo apt upgrade
sudo apt-get build-dep wine -f
sudo apt update
sudo apt upgrade
sudo apt-get build-dep wine -f
sudo apt update
sudo apt upgrade
# 生成 Makefile
./../configure --enable-win64
# 构建
make
# 初始化
wine64 wineboot
# 字体设置复制
cp ./fonts/* ~/.wine/drive_c/windows/Fonts/
# 注册表
sudo rm ~/.wine/system.reg
sudo cp ./system.reg ~/.wine/system.reg
wine64 regedit ~/.wine/system.reg
# 插件
wine64 msiexec /i ./plug/gecko.msi
wine64 misexec /i ./plug/mono.msi
sudo apt-get install winetricks
winetricks ie8
winetricks msctf
winetricks msls31
winetricks pngfilt
winetricks riched20
winetricks riched30
winetricks wininet
winetricks wsh56v6
winetricks xmllite

# mkdir ~/.cache/winetricks/win2ksp4/ 
# mkdir ~/.cache/winetricks/msls31/
# cp ./plug/W2KSP4_EN.EXE ~/.cache/winetricks/win2ksp4/
# cp ./plug/InstMsiW.exe ~/.cache/winetricks/msls31/