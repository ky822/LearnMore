# 基本IO操作
### 标准输入STDIN
* `<STDIN>`: 从键盘逐行读取，可以返回给标量变量`$value`或者数组变量`@list`
* `Ctrl + D`：结束输入，返回false
* Perl会讲读取的每行，自动存于`$_`变量中，例如

		while (<STDIN>) {	# 相当于$_ = <STDIN>
			chomp();		# 相当于chomp($_);
		} 

### <>操作符
<>操作符作用类似于STDIN，但并不是从键盘中读取，有两种读取方式  

* 从命令行给予的参数读取  
 *创建`test.pl`:*

 		#!/usr/bin/perl -w
 		whilie (<>) {
 			print $_;
 		}
 *执行`perl test.pl a.txt b.txt c.txt`，此时程序将从a.txt, b.txt, c.txt三个文件中读取内容*
 		
* 从ARGV数组中读取, 命令行赋予的参数，将保存到ARGC列表。

		@ARGV = ('a.txt', 'b.txt', 'c.txt');		# <>将从ARGV数组所列的文件中读取内容
		while (<>) {
		}

### 标准输出STDOUT
Perl使用`print`和`printf`来进行标准化输出。

* 普通输出`print`
* 格式化输出`printf`：和C格式化输出风格保持一致
