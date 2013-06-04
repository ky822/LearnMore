# 函数（子程序、Subroutine）
### 定义函数
基本语法
	
	sub SUBNAME {
		STATEMENT_1;
		STATEMENT_2;
		STATEMENT_3;
	}
* Perl的风格是建议将函数放在文件的末尾，程序主体放在前面。
* Perl中的函数都是全局的，并且若两个函数重名，后者复写前者，而不给予警告。
* 函数中的全局变量和程序其他部分共用，例如

		sub say_what {
			print "Hello, $what\n";	# 变量what和程序其他部分通用
		}

### 调用函数
一般`&FUNCTION_NAME`来调用函数，也可以不用&，直接`FUNCTION_NAME`来调用，两者据说略有不同。当然，允许子函数互相调用。

### 函数返回值
* `return (results);`：退出子程序并返回值，results可以是列表。
* 缺省时，`results;`：子程序最后一个语句作为返回值。

### 函数参数
调用函数的时候可以在函数名后加参数，例如

		&FUNCTION_NAME(A, B, C)
		
这样传入的参数，将会被存于函数的本地列表变量`@_`中，例如

		sub add {
			foreach $_ (@_) {		# 第一个参数为$_[0]，依次类推
			}
		}
		
### 函数中的本地变量
`local`和`my`两者类似，但`my`在Perl5中引入。

	my(@list) 或者 my @list
	local($var) 或者 local $var
为了方便阅读和使用函数参数，可以
	
	my($n, @list) = @_;		# 在函数开始的时候，将参数传递由@_给自定义的本地变量。
