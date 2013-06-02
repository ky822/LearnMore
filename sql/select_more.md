# SELECT用法进阶
* select 语法

        SELECT [DISTINCT | ALL]
            { 
                * |
                <字段> [[AS <别名>] … |
                <运算式> [[AS <别名>] …
            }
        FROM
            {
                <表名> [[AS] <别名>] |
                <结合表>
            }
        [WHERE <查找条件>]
        [GROUP BY <字段> … 
        [HAVING <查找条件>]]
        [{UNIOIN | UNION ALL | INTERSECT | EXCEPT} <SELECT 语句>]
        [ORDER BY <运算式> [ASC | DESC] … ]
            
    说明：
    
    * 中括号 []：可省略
    * 大括号 {}：不可省略
    * 尖括号 <>：自定义项目
    * 直线 |：供选择

* select 子句执行顺序

    1. FROM
    2. WHERE
    3. GROUP
    4. HAVING
    5. SELECT
    
### WHERE

举例如下：

    select DISTINCT field2 
    from test.bank_2
    where field2 < 8 && field2 > 0
    
### ORDER BY

语法：

    ORDER BY <字段1>, <字段2>, …
    
以字段1为第一基准 ，字段2为第二基准进行查找。

举例如下：

    select *
    from test.bank_2
    order by field2 DESC, field4 ASC
    
### GROUP BY

举例如下：

    select *
    from test.bank_2
    group by field2;

### HAVING

**注意**：聚合函数无法在WHERE子句中执行。

举例如下：
    
    select *
    from test.bank_2
    group by field2
    having AVG(field4) > 5000;