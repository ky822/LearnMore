# 数据表的结合

### 结合的基础，交叉结合（CROSS JOIN）

将多个数据表合并，就是结合。

* 交叉结合，即笛卡尔乘积

    语法如下：
    
        SELECT …
        FROM <数据表1>, <数据表2>, …

* 设定某个数据表的字段

    语法如下：
    
        SELECT <数据表>.<字段>, …
        FROM <数据表1> AS <别名>, <数据表2> AS <别名>, …
        
    举例如下：
    
        select a.field1, b.field2
        from bank_3 as a, bank_4 as b

### 等结合（EQUI JOIN）
将字段的值相同的记录合并，成为等结合

语法如下：

    SELECT …
    FROM <数据表1>, <数据表2>
    WHERE <数据表1>.<字段> = <数据表2>.<字段>;

结合多个数据表的时候

语法如下：

    SELECT …
    FROM <数据表1>, <数据表2>, <数据表3>
    WHERE <数据表1>.<字段> = <数据表2>.<字段>
        AND <数据表1>.<字段> = <数据表3>.<字段>;    

### 外部结合（OUTER JOIN）

某记录的字段仅存在于表1，不存在于表2，若要输出该条记录，则需使用外部结合。

内部结合（INNER JOIN）：输出满足结合条件的记录；而外部结合（OUTER JOIN）：输出左侧或右侧数据表的所有记录。


* 左侧外部结合：输出左侧数据表的所有记录

* 右侧外部结合：输出右侧数据表的所有记录

### 自身结合（SELF JOIN）

在from子句中，将相同的数据表名称重复写两次，语法如下：

    SELECT * 
    FROM <数据表1> AS <别名1>, <数据表2> AS <别名2>
