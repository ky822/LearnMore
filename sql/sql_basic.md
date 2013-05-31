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