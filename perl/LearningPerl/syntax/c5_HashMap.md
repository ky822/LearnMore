# 第五章. 哈希（书中称Associative Arrays）
### 基本概念
* 哈希变量名： `%fred`
* 键：`$key`
* 值：`$fred{$key}`
* 记录存放的顺序随机

### 基本操作
* 创建哈希表
	* 创建空表：`%street = ();`
	* 创建表：`%street = ('pine' => 92842, 'North Elm' => 92481, 'River' => 92842);`  
	因为哈希表和列表的存放结构一致，所以也可以类似列表方式创建，
`%street = ('pine', 92842, 'North Elm', 92481, 'River', 92842);`
* 增加记录: `$street{'South Elm'} = 92482;`  
如果表中原来已经有记录，则更新，否则插入。  

* 删除记录: `delete($street{'North Elm'});`

### 运算符
* keys() 运算符: `keys(%fred);`
	* 普通环境下，返回由key组成的列表，例如
	
			@list = keys(%fred);
	* 标量环境下，反悔键的总数（0~n），例如
	
			if (keys(%fred)) {...}
* values() 运算符: `values(%fred);`  
作用和keys()相似，返回值。  

* each() 运算符: `each(%fred);`  
作用和keys()相似，返回键值对，例如

		($key, $value) = each(%fred);
