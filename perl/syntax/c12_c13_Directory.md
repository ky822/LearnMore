# 目录操作
### 目录句柄
目录句柄和文件句柄类似，也采用大写，如`FRED`。与文件句柄不同的是，我们**只能**可以用Ta来读取文件列表，而不能进行删除和修改文件的操作。  

### 常用的目录操作
* `chdir(dirname)`，切换到其他目录

		chdir("/etc") || die("cannot cd to /etc");

* `glob pattern`或者简写成`<pattern>`，类似于<STDIN>一样操作，过滤文件列表

		@list = </etc/host*>;

* `opendir(HANDLE, "dirname")` / `closedir(HANDLE)`

		opendir(ETC, "/etc");
		closedir(ETC);

* `readdir(HANDLE)`，读取目录里面的文件列表

		while ($name = readdir(ETC)) {
			print "$name\n";
		}

### 更多的目录和文件操作
* `unlink()`，删除文件，类似于`rm file`，返回删除的文件的个数

		unlink($name);
		unlink("file1", "file2");
		unlink(<*.o>);
		unlink;		# 默认对$_进行操作

* `rename($old, $new)`，重命名文件，类似于`mv old new`，返回true或false

		rename("fred", "barney") || die("cannot rename");

* 硬链接`link($old, $new)`，相当于unix中的`ln old new`，类似于windows中的复制
* 软链接`symlink($old, $new)`，相当于unix中的`ln -s old new`，类似于windows中的重命名
* `readlink(name)`，返回软链接的link对象，如果没有symlink，则返回undef即false

		if ($x = readline(file)) {
			print "$x\n";
		}

* `mkdir(dirname, permissions)`，创建文件夹

		mkdir("gravelpit", 0777) || die("cannot mkdir gravelpit");

* `rmdir(dirname)`，删除文件夹
* `chown($UID, $GID, filelist)`，改变文件拥有者

		chown(1234, 35, "slate", "granite");		# 将slate和granite两个文件改为UID为1234，GID为35的所有

* `utime($atime, $mtime, filelist)`，修改前两个时间戳，自动生成新的第三个时间戳

		utime($atime, $mtime, "file1", "file2");