# 运算子和运算式

### 算数运算子

* 加法`+`

        select field2 + 10 as number, field3 as bank_name
        from bank_2
        
* 减法`-`
* 乘法`x`
* 除法`/`
* 余数`%`

### 连接运算子

算数运算子用来处理数值，连接运算子用来处理字符串。

SQL 可以采用`+`或`&`或`||`来连接字符串，但MySQL需要使用`CONCAT(str1, str2, …)`来连接，如下

    select CONCAT(field3, ",", field3) as bank_name
    from bank_2

### 比较运算子

* `=`

    对于字符串常数，使用单引号`'string'`，对于数值常熟，直接使用`123`

* `>`和`>=`
* `<`和`<=`
* `<>`或`!=`
    
    举例如下：
    
        select *
        from bank_2
        where field2 <> 5

* NULL

未赋值，被称为NULL，语法如下

        <字段> IS [NOT] NULL


### 逻辑运算子

* `AND`

        <运算式> AND <运算式>

* `OR`

        <运算式> OR <运算式>

* `NOT`

        NOT <运算式>


### LIKE运算子

使用`LIKE`和通配符进行模糊查找。

* `%`，任意字符

    语法如下：

        <字段> LIKE %<值>
        
    举例如下：

        select *
        from bank_2
        where field3 like '%WA%'

* `_`，一个字符

    举例如下：
    
        select *
        from bank_2
        where field3 like '_A%'

* NOT LIKE

    语法如下：
    
        <字段> NOT LIKE <值>


### IN和BETWEEN

* `IN`

    语法如下：
    
        <字段> IN (值1，值2，…)
        <字段> NOT IN (值1，值2，...)

* `BETWEEN`

    语法如下：
    
        <字段> BETWEEN <值1> AND <值2>
        <字段> NOT BETWEEN <值1> AND <值2>


### 集合运算子

使用集合运算子，就可以对多个数据表进行操作。

* `UNION`，并集

    语法如下：
    
        <SELECT 子句>
        UNION [ALL]                    -- 合并查询结果，去除重复的记录，或使用ALL保留所有记录
        <SELECT 子句>

* `INTERSECT`，交集

    语法如下：
    
        <SELECT 子句>
        INTERSECT
        <SELECT 子句>

* `EXCEPT`，差集

        <SELECT 子句>
        EXCEPT 或 MINUS
        <SELECT 子句>