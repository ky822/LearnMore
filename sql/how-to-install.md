# Mac下如何安装MySQL

1. 在[http://dev.mysql.com/downloads/mysql/](http://dev.mysql.com/downloads/mysql/)下载MySQL的dmg安装包。例如，

        mysql-5.6.11-osx10.7-x86_64.dmg

2. 首先，双击安装MySQL主安装包，600多M

        mysql-5.6.11-osx10.7-x86_64.pkg

3. 然后，安装MySQL开机启动配置文件

        MySQLStartupItem.pkg

4. 最后，安装Preferences中的MySQL配置插件

        MySQL.prefPane
        
* * *

### MySQL Server 这样就此装好了，怎么运行呢？

1. 在Prefereces的MySQL插件中启动MySQL Server
2. 在Terminal中进入MySQL二进制程序目录

        $ cd /usr/local/mysql/bin/

3. 设定root密码

        $ ./mysqladmin -h localhost -u root password 新密码

4. 进入mysql

        $ ./mysql -u root -p
        Enter password: 
        
### 如何方便使用？

* 命令行？

    那就把MySQL的bin目录加入环境变量。
        
        vim ~/.bash_profile
        export PATH=$PATH:/usr/local/mysql/bin/
        
    然后在terminal中

        mysql -u -p 

* 客户端？

    我就喜欢破解版的Navicat，看数据养眼。新建个连接呗，配置一般是这样的：
    
        Connection Name: jyfeather
        Host Name / IP Address: localhost
        Port: 3306
        User Name: root
        Save password: YES
        Encoding: Unicode (UTF-8)
        Enable MySQL character set: YES
        Use compression: NO
