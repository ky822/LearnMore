# 文件句柄
除标准IO，STDIN, STDOUT, STDERR外的其他文件IO。
### 打开和关闭句柄
	open(FILENAME, "somename") 或者 open(FILENAME, "< someone")	# 以只读方式打开文件
	open(FILENAME, "> somename")	# 以可写方式打开
	open(FILENAME, ">> somename")	# 以可插入方式打开
	
	close(FILENAME)	# 文件操作结束后，需要关闭句柄
	
### die()
用来检测文件打开是否成功。`open(FILENAME, "> /tmp/data") || die("I cannot open /tmp/data")`

### 使用文件句柄
* 读取，和<STDIN>类似

		while (<FILENAME>) { … }	# 将从FILENAME中逐行读取，默认$_

* 写入，和<STDOUT>类似

		print LOGFILE "hello\n";	# 将hello写入LOGFILE
		print STDOUT "hello\n";		# 即 print "hello\n";
		
### 文件测试
文件测试符 | 作用 | 文件测试符 | 作用
---- | ---- | ---- | ---- 
-r | 文件或目录可读 | -w | 文件或目录可写
-x | 文件或目录可执行 | -o | 文件或目录为用户所有
-e | 文件或目录存在 | … | …

文件测试一般返回true或者false，也有可能别的内容。
	
	if (-r $filename && -w $filename) {	# 当省略$filename时，默认对$_操作
		…
	}

### stat() 和 lstat()
* stat(), 用来获取文件详情

		($dev, $ino, $mode, $nline, $uid, $gid, $rdev, $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat(FILENAME);
		# unix 描述
		struct stat { 
			dev_t     st_dev;     # 文件所在设备的标识
			ino_t     st_ino;     # 文件结点号
			mode_t    st_mode;    # 文件保护模式
			nlink_t   st_nlink;   # 硬连接数
			uid_t     st_uid;     # 文件用户标识 
			gid_t     st_gid;     # 文件用户组标识
			dev_t     st_rdev;    # 文件所表示的特殊设备文件的设备标识
			off_t     st_size;    # 总大小，字节为单位
			blksize_t st_blksize; # 文件系统的块大小
			blkcnt_t st_blocks;	  # 分配给文件的块的数量，512字节为单元 
			time_t    st_atime;   # 最后访问时间
			time_t    st_mtime;   # 最后修改时间 
			time_t    st_ctime;   # 最后状态改变时间
}; 

* lstat(), 返回链接符号本身的详情

### `_`文件句柄
`_` 代表上一次执行操作的文件句柄，`if (-r $filename && -w _) { … }`。为什么要用`_`呢？  
因为，执行`stat()`, `-r`, `-w`的时候，Perl都需要调用系统函数stat，而使用`_`则，当第二次执行这些操作的时候，不需要调用stat，而是从上一次的缓存中读取，从而提高了效率。