# 进程管理
### `system()`创建进程
* 最简单的系统调用

		system("date")		# 执行date命令，输出到shell，返回执行状态

* 重定向到文件

		system("date > date.txt") && die "Failure\n";		# 因为系统调用成功返回0，失败返回非0

* 后台运行  `system("long_running_command with parameter &"); `

		system("(date; who) > $where &");		# 多个进程使用分号分开

* 进程环境变量`%ENV`

		foreach (sort(keys(%ENV))) {
			print "$_=$ENV{$_}\n";
		}

* 参数，第一个是命令，后面的都是参数列表

		system("cc -o slate @options @cfiles");		# shell型
		system("cc", "-o", "slate", "@options", "cfiles")	# 列表型
		
### 反引号``创建进程，在程序中获得系统调用的输出

	foreach (`who`) {
		($who, $where, $when) = /(\S+)\s+(\S+)\s+(.*)/;
		print "$who on $where at $when\n";
	}

### 进程句柄
`system()` 和 `exec()` 都采用的是同步进程的方式，使用`open(HANDLE, "process")`则是采用异步进程方式。