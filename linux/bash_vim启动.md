# bash 和 vim 的启动过程

### bash 启动配置顺序

登录Linux后，BASH要读取几个文件，这些文件（启动脚本文件）用来定义BASH环境，如果希望建立标准的别名，或者希望设置各种shell变量，就应该在bash启动文件中进行设置。这几个文件是

1. `/etc/profile`
2. `~/.bash_profile`
3. `~/.bash_login`
4. `~/.profile`
5. `~/.bashrc`

BASH有三种常见的启动方式：

1. **登录交互式**，即从字符终端登录或在X Window中启动终端窗口。BASH启动过程中首先读取文件1，然后按顺序读取文件2－4中遇到的第一个文件，启动后读取并运行文件5，前面文件的设置会被后面文件的设置所覆盖。通常文件1中设置系统环境变量，文件2－4设置用户自定义的环境，文件5设置登录后运行的程序。

2. **非登录交互式**，即从其它shell或bash自身启动BASH。这时文件1－4都不被读取，唯一的启动文件是~/.bashrc。

3. **非交互式**，即运行SHELL脚本。这时所有的启动脚本文件都不执行，但如果定义了系统环境变量ENV，则ENV的值作为启动脚本文件名首先执行。在前两种情况下，如果定义了环境变量ENV，则首先读取ENV指定的文件，然后按顺序读取前述脚本文件。 

### vim 启动配置顺序

* 在vim中输入`:help startup`，即可查看
* [http://vimdoc.sourceforge.net/htmldoc/starting.html](http://vimdoc.sourceforge.net/htmldoc/starting.html)
* `$ vim -V test.vim`，也可以输出启动信息

加载的配置文件主要就是系统和用户两个，

1. `/usr/share/vim/vimrc`
2. `$HOME/.vimrc`

至于vim针对不同后缀加载高亮脚本、插件脚本和模板等等，则需要使用另外两个地方的语法脚本文件。

1. 系统级的`/usr/share/vim/vim73/`，其中`syntax`下面的就是不同语言的语法高亮脚本
2. 用户级的`~/.vim`，若没有，可以自己新建