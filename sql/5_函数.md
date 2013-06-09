# 函数
### 聚合函数

定义：对一组行（记录）中的某个列（字段）执行计算，并返回单个值。

* `COUNT`：统计共有多少记录 

        COUNT([DISTINCT] {* | <字段>})
        
    举例如下：
    
        select count(distinct field1) from bank_2

* `SUM`：统计指定字段的值的总和

        SUM(<字段>)

* `AVG`：指定字段的平均值

        AVG(<字段>)

* `MAX`：指定字段的最大值

        MAX(<字段>)

* `MIN`：指定字段的最小值

        MIN(<字段>)


### 字串函数

* `UPPER`和`LOWER`

        UPPER(<字段或字串>)
        LOWER(<字段或字串>)

* `SUBSTRING`：取出字串中的某一部分

在MySQL中，语法如下

        SUBSTR(<字段或字串> FROM <开始位置> [FOR <字符个数>])
        
举例如下，

        select SUBSTR(field3 FROM 1 FOR 5) from bank_2

* `LENGTH`：统计字符串长度

        LENGTH(<字段或字符串>)

* `LTRIM`和`RTRIM`：移除字符串左边和右边的空白

        LTRIM(<字段或字符串>)
        RTRIM(<字段或字符串>)


### 算数函数
对从数据表中取出的数据进行操作。

* `ABS`：取绝对值

        ABS(<字段或数值>)

* `CEIL`和`FLOOR`

        CEIL(<字段或数值>)        -- 从大于给定数值中，取最小的整数
        FLOOR(<字段或数值>)        -- 从小于给定数值中，取最大的整数

* `SIGN`：返回给定数值的正负号，正号返回1，符号返回-1，0返回0

        SIGN(<字段或数值>)

* `SQRT`：返回给定数值的平方根

        SQRT(<字段或数值>)