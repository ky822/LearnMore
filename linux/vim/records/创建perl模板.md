### 创建perl模板

1. 编写模板

		mkdir ~/.vim/template	# 创建存放模板的文件夹
		touch FILENAME.tlp		# 创建模板
		
	模板如下：
	
		#!/usr/bin/perl -w

		# 
		#
		#

		use strict;

		exit 0;

2. 修改`.vimrc`

		"使用模板
		autocmd BufNewFile *.pl 0r ~/.vim/template/perl.tpl
		
	autocmd是干嘛的？[点此](http://man.chinaunix.net/newsoft/vi/doc/autocmd.html).
	总之，在vim中，可以通过`autocmd BufNewFile`来实现静态的模板文件。