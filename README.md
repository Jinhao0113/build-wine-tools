# build wine tools

这是一个帮助`ubuntu`,`debian`,`kali`等,以`apt`为软件管理工具的`linux`系统构建`wine`的项目

## start

### 克隆`wine`仓库

* 官方(特别慢)

```bash
$ git clone git://source.winehq.org/git/wine.git --depth=1 # git
$ # 或者
$ git clone https://source.winehq.org/git/wine.git --depth=1 # https
```
* github(有点慢)

```
$ git clone git@github.com:wine-mirror/wine --depth=1 # ssh
$ # 或者
$ git clone https://github.com/wine-mirror/wine.git --depth=1 # https
```

* gitee(不一定最新)

```
$ git clone git@gitee.com:lz2019hjh/wine.git --depth=1 # ssh
$ # 或者
$ git clone https://gitee.com/lz2019hjh/wine.git --depth=1 # https
```
进入目录

```bash
$ cd wine
```

### 克隆`build-wine-tools`仓库

* github(慢)

```bash
$ git clone git@github.com:lz2019hjh/build-wine-tools.git --depth=1 #ssh
$ # 或者
$ git clone https://github.com/lz2019hjh/build-wine-tools.git --depth=1 # https
```

* gitee

```bash
$ git clone git@gitee.com:lz2019hjh/build-wine-tools.git --depth=1 #ssh
$ # 或者
$ git clone https://gitee.com/lz2019hjh/build-wine-tools.git --depth=1 # https
```

进入目录

```bash
$ cd build-wine-tools
```
执行

```bash
$ chmod +x install.sh
$ sudo ./install.sh
$ # 可能要等好久
```
过程中如果出现让你安装`wine gecko`和`wine mono`请点击取消

### 测试

执行

```
$ wine
$ # 或者
$ wine64
```

有关`wine`的使用
请见我的[博客](https://lz2019hjh.github.io)
