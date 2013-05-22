# 列表
### 列表定义和初始化
	@list = (1, 2, 3, …);
	$list[0], $list[1], …
	$num = @list		# 这种情况下，返回列表元素总个数
### 列表操作函数
* `push(@list, $item)`，右侧插入
* `pop(@list)`，右侧弹出
* `shift(@list)`，左侧弹出
* `unshift(@list, $item)`，左侧插入
* `reverse()`，返回逆序列表

		@reList = reverse(@list);

* `sort()`，返回顺序列表

		@noList = sort(@list);

* `chomp()`，消去每条记录的最后一个字符

		chomp(@list);