# 对象
### 内在属性：模式和长度
模式：对象的基本构成类型，例如向量可以由数字、逻辑值和字符表示。

* mode(object)
* length(object)

		[1] -1 -2 -3 -3 -4 -1 -2 -3 NA
		> mode(x)
		[1] "numeric"
		> length(x)
		[1] 9
		
### 改变对象模式
as.something()：可以用来改变模式
		
		> digits <- as.character(x)
		> digits
		[1] "-1" "-2" "-3" "-3" "-4" "-1" "-2" "-3" NA 
		
		> d <- as.integer(digits)
		> d
		[1] -1 -2 -3 -3 -4 -1 -2 -3 NA
		
### 改变对象长度
		
		> e<-numeric()	# 生成空的数值向量，character()生成空的字符向量
		> e
		numeric(0)
		> e[3] <- 7		# 自动将e向量扩展成3个元素，前面两个为NA
		> e
		[1] NA NA  7
		
		> length(e) <- 2	# 将e向量减少成2个元素
		> e
		[1] NA NA
		
### 对象的其他属性
* attributes(object)：除内在属性外的其他属性

		> attributes(x)
		NULL
	
* attr(object, name)：可以用来分配一个新的或者修改旧的属性
		
		> attr(e, "dim") <- c(1,2)	# 1 x 2的矩阵属性
		> attributes(e)
		$dim
		[1] 1 2
		
### 类
R中的所有对象都有自己的类，，可以通过`class(object)`来查看。

* 向量的类，就是他们的模式，`numeric`, `logical`, `character`
* `matrix`, `array`, `factor`, `data.frame`是其他的类

`unclass(object)`可以**临时**取消类的影响效果。