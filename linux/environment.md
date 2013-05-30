# 变量和环境变量

* [常用环境变量介绍](#1)
* [查看当前环境变量](#1)
* [变量操作](#2)
* [变量设置规则](#3)
* [自定义变量转成环境变量](#4)

* * *

<span id="1"></span>
### `env`查看环境变量及常用环境变量介绍

    $ env
    TERM_PROGRAM=Apple_Terminal
    TERM=xterm-256color
    SHELL=/bin/bash
    CLICOLOR=1
    …

* PATH：执行文件查找的路径；目录与目录间逗号`,`分割；文件依目录次序查询；
* HOME：用户主文件夹，`cd ~`
* SHELL：哪个shell，`/bin/bash`
* HISTSIZE：历史命令的个数
* MAIL：哪个邮箱
* LANG：语系数据，中文编码一般是
    
    * zh_CN.gb2312
    * zh_CN.UTF-8
    
* RANDOM：随机数变量
* PS1：提示符设置
* $：当前shell的PID
* ?：上次执行命令的回传码

<span id="2"></span>
### `echo`&`unset`变量的显示、设置和取消

* 显示

        echo $变量名        # 两者等价
        echo ${变量名}

* 设置

        变量名=变量值

* 取消

        unset 变量名


<span id="3"></span>
### 变量设置规则

* 等号两边没有空格
* 英文字符开头
* 双引号保持本性，单引号转成文本，类似perl
* 特殊字符需要用转义字符\
* 系统变量大写，自定义变量小写
* 可以使用`$变量`来引用变量的值

<span id="4"></span>
### `export`将自定义变量转为环境变量
bash中调用其他进程，会将环境变量传给子进程，但不会将自定义变量传递，这时就需要将自定义变量临时转成环境变量。

    export 变量名称