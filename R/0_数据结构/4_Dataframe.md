##### 数据框
列表相当于包含不同类型对象的向量，而数据框相当于包含不同类型对象的矩阵。

### 1. 创建数据框
    
    > kids <- c("jack", "jill")    > ages <- c(12, 10)    > d <- data.frame(kids, ages, stringsAsFactors=F)    > d      kids ages    1 jack   12    2 jill   10

### 2. 访问数据框

    > d[[1]]    # 列表访问方式    [1] "jack" "jill"    > d$kids    # 列表访问方式    [1] "jack" "jill"
    ---    > d[,1]    # 矩阵访问方式    [1] "jack" "jill"