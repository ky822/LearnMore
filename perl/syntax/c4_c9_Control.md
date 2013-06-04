# 控制结构
### 选择结构
* if

		if (<EXPRESION>) {
			...
		} elsif (<EXPRESSION>) {
			...
		} else {
			...
		}

* unless，正好和 if 相反

		unless (<EXPRESION>) {
			...
		} elsif (<EXPRESSION>) {
			...
		} else {
			...
		}

* switch

		use Switch;
		
		switch ($val) {
			case 1 		{ … }
			case 'one' 	{ … }
			case qr/\w+/	{ … }
			else			{ … }
		}

### 循环结构
* while

		while (<EXPRESSION>) {
			...
		}

* until，正好和 while 相反

		until (<EXPRESSION>) {
			...
		}

* for，类C

		for (INITIAL_EXP; TEST_EXP; INCREMENT_EXP) {
			...
		}

* foreach，针对列表

		foreach $i (@list) {		# 当省略$i时，可以使用$_代替
			...
		}
		
* do

		do {
			...
		} while/until (<EXPRESSION>)
		
### 其他
* 循环控制
	* `last`：跳出本次循环，类似于C中的`break`
	* `next`：跳过本次循环，继续下轮循环，类似于C中的`continue`
	* `redo`：重复此次循环
* 单行结构

		exp2 if exp1;
		exp2 unless exp1;
		exp2 while exp1;
		exp2 until exp1;

* 标签模块  
相当于C中的`goto`

		OUTER: for ($i = 0; $i <= 10; $i++) {
			INNER: for ($j = 0; $j <= 10; $j++) {
				if ($i * $j == 63) {
					last OUTER;
				} 
				if ($j > $i) {
					next OUTER;
				}
			}
		}


* &&, ||, ?  
可以用来替代`if`或`unless`

		# &&，以下三者等价
		1. if (this) {that}
		2. that if this
		3. this && that
		
		# ||，以下三者等价
		1. unless(this) {that}
		2. that unless this
		3. this || that
		
		# ?:，以下两者等价
		1. if (exp1) {exp2} else {exp3}
		2. exp1 ? exp2 : exp3
