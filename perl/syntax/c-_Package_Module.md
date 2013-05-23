# 包和模块
### require函数
* 在程序中使用`require(filename)`来调用其他文件的函数。

	* 找到并成功执行，`require("test.pl");`
	* 没找到，`Can't locate test2.pl in @INC (@INC contains: …)`，其中`@INC`是require寻找的内置数组。
	* 找到但执行失败，即目标文件最后一个表达式的返回值为0，`myfile.pl did not reture true value`
	* require()，则对$_执行

* 利用require指定Perl执行版本号

		require(5.10.0);		# 需要Perl版本不低于5.10.0才能执行

* 利用require来自定义子程序库。

### 包，Package
Package是Perl子程序和变量名等名称的集合。
* 在一个程序中可以定义多个包，每个包都是独立的命名空间。

		$var = 5;
		package one;
		$var = 10;

* 包之间可以来回切换，每个包的作用范围是两个package之间的部分。也可以在子程序中切换

		package one;
		$var = 5;
		package two;
		$var = 10;
		package one;
		print "$var\n";

* Perl程序默认使用main包，可以显式切换回main包。

		package main;

* 包的引用，可以引用其他包中定义的变量或者函数。

		print "$two::var\n";		# $包名::变量名

* 指定无当前包，这种情况下，所有变量名都需要显式指定包名

		package;
		print "$one::var\n";

* 包和系统变量，系统变量即使在别的包中调用，也会影响到main包

	* 文件变量STDIN, STDOUT, STDERR 和 ARGV
	* 变量%ENV, %INC, @INC, $ARGV 和 @ARGV
	* 其它含有特殊字符的系统变量

### 模块，Module
Module也是变量和子程序的集合。

* 创建模块

	方法是创建包，并保存为同名文件，后缀为.pm，即Perl module。如`Mymodult.pm`
	
		1 : #!/usr/local/bin/perl		
		2 : # 3 ~ 7 行是标准的Perl模块定义方式 
		3 : package Mymodule;
		4 : require Exporter;			# 内置Exporter模块。
		5 : @ISA = qw(Exporter);
		6 : @EXPORT = qw(myfunc1 myfunc2);		# 用来和外界联系
		7 : @EXPORT_OK = qw($myvar1 $myvar2);	# 用来和外界联系
		8 :
		9 : sub myfunc1 {
		10:   $myvar1 += 1;
		11: }
		12:
		13: sub myfunc2 {
		14:   $myvar2 += 2; 
		15: }	

* 导入模块

		use Module;	# 这样就可以使用Module中的变量和子程序
		no Module;	# 取消使用Module

* 预定义模块

	模块名 |　作用
	---- | ----
	integer | 使用整数运算
	Diagnostics | 输出较多的诊断信息（警告）
	English | 允许英文名用作系统变量的别名
	Env | 导入环境变量的Perl模块
	POSIX | POSIX标准（IEEE 1003.1）的Perl接口
	Socket | 装载C语言的套接字处理机制