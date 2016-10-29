# EmacsSet
Hongyi Wu(吴鸿毅) emacs setting

## Linux

emacs24.3、emacs24.4与我的.emacs配置有冲突（开多窗口失效），所以自己安装最新24.5版本（暂时还没发现没法修复的bug）。

依赖的库：

```bash
yum install giflib-devel.x86_64  giflib-utils.x86_64
```

如果没安装以上依赖的库，则以下安装会提示问题，根据提示将其屏蔽掉不安装即可。


```bash
$ tar -zxvf emacs-24.5.tar.gz
$ cd emacs-24.5
$ ./configure --prefix=/usr
$ make -j4
make install
```

## Windows

