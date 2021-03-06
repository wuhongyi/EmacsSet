# EmacsSet
Hongyi Wu(吴鸿毅) emacs setting

**当前最新版本 26.1** Linux下请使用使用 26.1 ，windows下请使用 26.1

## emacs 26.1

**Linux**

安装最新*26.1*版本emacs请下载并执行脚本[autoinstallemacs](https://github.com/wuhongyi/BasicConfiguration/blob/master/autosetSL7/autoinstallemacs.sh)


需要修改 *.emacs* 文件。其中，*.emacs* 文件修改个人信息设置部分以及自动补全功能搜索路径部分。

在终端输入
```bash
echo "" | g++ -v -x c++ -E - 
```
将输出内容夹在
```text
#include "..." 搜索从这里开始：
#include <...> 搜索从这里开始：


搜索列表结束。
```
的部分复制过来替换自动补全部分的搜索，也可以加上自己常用软件的头文件目录，如我的：
```
 /usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/../../../../include/c++/4.9.2
 /usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/../../../../include/c++/4.9.2/x86_64-unknown-linux-gnu
 /usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/../../../../include/c++/4.9.2/backward
 /usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include
 /usr/local/include
 /usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include-fixed
 /usr/include
 /opt/root60806/include
 /home/wuhongyi/CodeProject/inc
 /home/wuhongyi/CodeProject/inc/wu_CLHEP
 /home/wuhongyi/CodeProject/G4_inc
 /home/wuhongyi/CodeProject/ROOT_inc
 /opt/Geant4/geant41003p01/include/Geant4
```



快捷键配置如下：  
- F1 显示/隐藏工具栏
- C-F1 显示/隐藏菜单栏
- F2 gdb
- F3 代码转跳
- C-F3 不提示跳回
- F4 git-status
- F7 放大字体
- F8 缩小字体
- F9 undo
- F10 delete-window
- C-F10 kill-this-buffer
- F11 open-shell-other-buffer
- C-F11 当前窗口打开shell
- F12 onekey-save


**windows**

windows版本请到 http://ftp.gnu.org/gnu/emacs/windows/ 下载。解压缩之后运行bin文件夹内可执行文件即可。

配置文件可放在默认位置 c:/Users/yourname/AppData/Roaming  

emacs 25.2 在windows下很卡，需要重新配置下字体。打开菜单Options -> Set Default Font，更改字体字号等。然后再回到Options菜单，点击 Save Options。后面这一步务必操作，否则没有保存配置。

emacs 26.1 同样存在很卡的问题，网上有说更改字体配置的，有说将系统语言设置成中文的。

----

## emacs 手动安装

emacs24.3/24.4与我的.emacs配置有冲突（开多窗口失效），所以自己安装新版本24.5/25.2/26.1版本（暂时还没发现没法修复的bug）。

依赖的库：

```bash
yum install giflib-devel.x86_64  giflib-utils.x86_64
```

如果没安装以上依赖的库，则以下安装会提示问题，根据提示将其屏蔽掉不安装即可。


```bash
$ tar -zxvf emacs-26.1.tar.gz
$ cd emacs-26.1
$ ./configure --prefix=/usr
$ make -j4
make install
```
