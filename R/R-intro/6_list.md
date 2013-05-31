# 列表和数据框
R中的列表是以对象的有序集合构成的对象，列表中包含的对象又称为它的分量。
    
    > lst <- list(name="fred", wife="mary", no.children=3, child.ages=c(4,7,9))

列表是按顺序被编号的。注意两种括号之间的差别
    
    > lst[[2]]




### 构建和修改列表

    > Lst <- list(name 1=object 1, ..., name m=object m)
    
* 扩充分量

        > Lst[5] <- list(matrix=Mat)

* 连接分量


