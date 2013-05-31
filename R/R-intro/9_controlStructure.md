# 成组、循环、条件控制
### 成组表达式

命令可以用大括号圈在一起组成一个命令（成组表达式），成组表达式的结果是改组命令中最后一个表达式的值。

    {expr_1; … ; expr_N}

### 控制语句

* 条件控制，if

        > if (expr_1) expr_2 else expr_3

* 循环控制，for/repeat/while

    * `for(name in expr_1) expr_2`
    * `repeat expr`
    * `while (condition) expr`
    
* next和break

    next：跳出本次循环，继续下次循环  
    break：结束当前循环

    