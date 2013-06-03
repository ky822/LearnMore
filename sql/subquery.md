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