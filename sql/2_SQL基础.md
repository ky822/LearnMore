# SQL基础

### SQL语句分类

1. 数据定义语言(DDL)：能够定义、建立数据库和数据表
    * `CREATE`：建立数据库或数据表
    * `ALTER`：变更数据库或数据表的结构
    * `DROP`：删除数据库或数据表

2. 数据操作语言(DML)：能够新增、更新、搜寻数据库中的数据
    * `SELECT`：搜寻数据
    * `INSERT`：新增数据
    * `UPDATE`：更新数据
    * `DELETE`：删除数据

3. 数据控制语言(DCL)：能够维持数据库的安全性和数据的整合性
    * `GRANT`：授权用户操作数据的权限
    * `REVOKE`：撤回权限
    * `COMMIT`：确定数据变更
    * `ROLLBACK`：取消数据变更

### SQL语法

* 关键字、子句、语句

    语句以分号`;`结束。

* 注释

    1. `-- 注释`
    2. `/* 注释 */`

举例如下：

        select *	/* hello */                        # 子句1
        from bank_2    -- world                        # 子句2
        where field3="WASHINGTON COUNTY BANK";         # 子句3


### 数据定义和导入

* 数据**库**创建
 
        CREATE DATABASE food;

    在创建数据表之前，需要创建出`User`、`Schema`等等。

* 数据类型

    * char
    * 二进制
    * numeric
    * boolean
    * time

* 数据**表**创建

    语法如下：
    
        create table <数据表名称> (
            <字段1> <数据类型> [not null],
            <字段2> <数据类型> [not null],
            <字段3> <数据类型> [not null], …
        )

* 添加数据

        insert into <数据表名称>
            (<字段1>, <字段2>, …)
            values(<值1>, <值2>, …)

### 数据查询

语法：

    select <字段> from <数据表名称>
    
* 查询全部

        select * from <数据表名称>

* 按指定字段顺序输出

        select <字段1>, <字段2>, … from <数据表名称>

* 排除重复数据

        select distinct <字段1> … from <数据表名称>

* 条件查询

        select <字段> from <数据表名称> where <查询条件>

* * *

# 根据语句分类来简单介绍各语句语法

### 数据定义语言

* 创建和删除数据库

        CREATE DATABASE <数据库名称>
        DROP DATABASE <数据库名称>

* 创建和删除数据表

        CREATE TABLE <数据表名称> (
            <字段> <类型> [NOT NULL],
            <字段> <类型> [NOT NULL],
            ...
        )
        DROP TABLE <数据表名称>

* 变更数据表结构，增加、修改、删除列（字段）

        ALTER TABLE <数据表名称> {
            ADD <字段> <类型> … |
            ALTER <字段> <类型> … |
            DROP <字段> ...
        }

* 创建视图

        CREATE VIEW <视图名称> [<字段>, …] 
            AS <SELECT 子句>
        DROP VIEW <视图名称>

* 创建索引，使数据搜索更快速

        CREATE [UNIQUE] INDEX <索引名称>
            ON <数据表名称> (<字段> [ASC | DESC] …)
        DROP INDEX <索引名称>


### 数据操作语言

* INSERT 

    * INSERT … VALUES …：指定记录的数据，然后插入
    
        语法如下：
        
            INSERT INTO <数据表名称>
                (<字段1>, <字段2)
            VALUES
                (<值1>, <值2>, … )
    
    * INSERT … SELECT …：从其他数据表中取得记录，然后插入
    
        语法如下：
        
            INSERT INTO <数据表名称>
                (<字段1>, <字段2)
            SELECT <字段1>, <字段2>, …
            FROM <数据表名称>
            WHERE <查找条件>

* UPDATE

    语法如下：
    
        UPDATE <数据表名称> 
        SET <字段1> = <值1>, …
        WHERE <查找条件>

* DELETE

    语法如下：
    
        DELETE FROM <数据表名称>
        WHERE <查找条件>


### 数据控制语言

* 交易管理

    定义：对一连串的数据库进行处理，整合成一个作业单位来进行管理，成为交易。

* 安全性管理

        GRANT <权限> ON <数据表名称> TO {<使用者名称> | PUBLIC} [WITH GRANT OPTION]
        REVOKE <权限> ON <数据表名称> FROM {<使用者名称> | PUBLIC}
