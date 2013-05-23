# APT 软件包管理工具
为了替代早期linux以release源代码来发布软件，Debian 推出了dpkg，Red Hat推出了rpm等软件管理工具，后来Debian又推出了APT来自动解决依赖性、配置文件、升级等以使方便软件安装。Ubuntu基于Debian开发，使用apt管理软件包。  [APT官方使用手册](http://www.debian.org/doc/manuals/apt-howto/ch1.en.html)
### 配置
* /etc/apt/sources.list

	Ubuntu在线安装、更新软件来源于`/etc/apt/sources.list`，以下是ubuntu 12.04LTS的源文件列表：

		1 # deb cdrom:[Ubuntu 12.04.2 LTS _Precise Pangolin_ - Release i386 (20130213)]/ precise main resttricted
		2 
		3 # See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
		4 # newer versions of the distribution.
		5 deb http://hk.archive.ubuntu.com/ubuntu/ precise main restricted
		6 deb-src http://hk.archive.ubuntu.com/ubuntu/ precise main restricted
		7 
		8 ## Major bug fix updates produced after the final release of the
		9 ## distribution.
		10 deb http://hk.archive.ubuntu.com/ubuntu/ precise-updates main restricted
		11 deb-src http://hk.archive.ubuntu.com/ubuntu/ precise-updates main restricted
		12 
		13 ## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
		14 ## team. Also, please note that software in universe WILL NOT receive any
		15 ## review or updates from the Ubuntu security team.
		16 deb http://hk.archive.ubuntu.com/ubuntu/ precise universe
		17 deb-src http://hk.archive.ubuntu.com/ubuntu/ precise universe
		18 deb http://hk.archive.ubuntu.com/ubuntu/ precise-updates universe
		19 deb-src http://hk.archive.ubuntu.com/ubuntu/ precise-updates universe
		20 
		21 ## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu 
		22 ## team, and may not be under a free licence. Please satisfy yourself as to 
		23 ## your rights to use the software. Also, please note that software in 
		24 ## multiverse WILL NOT receive any review or updates from the Ubuntu
		25 ## security team.
		26 deb http://hk.archive.ubuntu.com/ubuntu/ precise multiverse
		27 deb-src http://hk.archive.ubuntu.com/ubuntu/ precise multiverse
		28 deb http://hk.archive.ubuntu.com/ubuntu/ precise-updates multiverse
		29 deb-src http://hk.archive.ubuntu.com/ubuntu/ precise-updates multiverse
		30 
		31 ## N.B. software from this repository may not have been tested as
		32 ## extensively as that contained in the main release, although it includes
		33 ## newer versions of some applications which may provide useful features.
		34 ## Also, please note that software in backports WILL NOT receive any review

	* deb:编译好的二进制软件包
	* deb-src:源代码包
	* sources.list改动后，使用apt-get update更新

* 确定最优源，加入sources.list

	* 修改前，最好将原来的备份，`mv sources.list sources.list.bak`
	* 如何确定快不快？直接ping各个源地址

### 使用
* `apt-get update`
* `apt-get install NAME`

	首先会从`/var/cache/apt/archives/`中搜索，然后再从源列表`sources.list`中所标注的源取得该包，再按照依赖性进行顺序安装。APT下载的文件将被存放在`/var/cache/apt/archives/`，如果想重新安装，则
		
		apt-get -reinstall install NAME

* `apt-get remove NAME`

	这个命令并不能删除依赖的包以及配置文件等，若想彻底删除，则使用
		
		apt-get -purge remove NAME

* `apt-get -u update`

	显示系统需要更新的软件列表

* `apt-get upgrade`

	更新系统发行版和软件爱你发行版

* `apt-get clean` or `apt-get autoclean`

	* `apt-get clean`：删除/var/cache/apt/archives/ & /var/cache/apt/archives/partial/ 目录中除锁文件外的所有文件
	* `apt-get autoclean`：删除这些目录中过时的文件