# 子查找

### 子查找的基础

* 子查找的原理

    语法如下：
    
        SELECT <字段>
        FROM <数据表>
        WHERE <字段> <比较运算符>
            (
                SELECT <字段>
                FROM <数据表>
                [WHERE <查找条件>]
            )
            
* 若子查询结果返回多个值的使用，使用`in`

    举例如下：
    
        SELECT *
        FROM 订单
        WHERE 产品编号 IN
            (
                SELECT 产品编号
                FROM 产品
                WHERE 产品名称 LIKE '%豆沙包'
            ) 
            
### EXIST/ANY/ALL
这三个关键字用来评价子查找的结果集，返回TRUE or FALSE

* EXIST：若存在结果集，返回TRUE
* ANY：若结果集存在任一符合条件的元素，返回TRUE
* ALL：若结果集元素全部满足条件，返回TRUE
