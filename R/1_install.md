# 安装R
### Ubuntu 环境
1. 添加CRAN源

	从[CRAN源](http://cran.r-project.org/mirrors.html)中选择一个合适的。添加到/etc/apt/sources.list中。使用`apt-get update`更新数据库。
		
		53 ## This software is not part of Ubuntu, but is offered by third-party
 		54 ## developers who want to ship their latest software.
		55 deb http://extras.ubuntu.com/ubuntu precise main
		56 deb-src http://extras.ubuntu.com/ubuntu precise main
		57 deb http://cran.stat.nus.edu.sg//bin/linux/ubuntu precise/
		58 deb-src http://cran.stat.nus.edu.sg//bin/linux/ubuntu precise/

2. 验证源安全性

	若未验证安全性，会提示：

		 W: GPG error: http://cran.stat.nus.edu.sg precise/ Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 51716619E084DAB9
	
	由于Linux下的软件库需要负责人签名验证安全性，在添加完R的仓库地址后，还需要把仓库负责人的钥匙信息导入你的系统。
	
		$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
		$ gpg -a --export E084DAB9 | sudo apt-key add -

3. 安装

		sudo apt-get update
		sudo apt-get install r-base

4. 运行R

	Terminal中输入R，即可
	
		yanjin@yanjin-WorkPC:~/Documents/git/LearnMore/R$ R

		R version 3.0.1 (2013-05-16) -- "Good Sport"
		Copyright (C) 2013 The R Foundation for Statistical 
		Computing Platform: i686-pc-linux-gnu (32-bit)
		
		R is free software and comes with ABSOLUTELY NO WARRANTY.
		You are welcome to redistribute it under certain conditions.
		Type 'license()' or 'licence()' for distribution details.
		
		Natural language support but running in an English locale

		R is a collaborative project with many contributors.
		Type 'contributors()' for more information and
		'citation()' on how to cite R or R packages in publications.
		
		Type 'demo()' for some demos, 'help()' for on-line help, or
		'help.start()' for an HTML browser interface to help.
		Type 'q()' to quit R.

		> 


### Mac OS 环境
* 下载
		
	CRAN有提供给Mac OS的软件安装包，点击[这里](http://cran.r-project.org/index.html)。下载`R-xxx.pkg`即可。

* 安装

	* 下载后，先验证MD5码，防止镜像错误等。

			md5 R-xxx.pkg

	* 其次，验证签名有效性。

			pkgutil --ckeck-signature R-xxx.pkg

	* 正常安装即可，包括三个部分：

		1. R Framework -> /Library/Frameworks
		2. R.app GUI -> ~/Applications
		3. Tcl/Tk for X11 -> /usr/local

* 运行

	* 在Terminal中输入R，即可
	* 使用/Applications/R