# 包
所有的R 函数和数据集是保存在包(packages)里面的。只有当一个包被载入 时,它的内容才可以被访问

* 查看当前环境可用的包

        > library()

* 载入指定包

        > library(boot)

* 查看当前已经载入的包

        > search()         [1] ".GlobalEnv"        "tools:rstudio"     "package:stats"             [4] "package:graphics"  "package:grDevices" "package:utils"             [7] "package:datasets"  "package:methods"   "Autoloads"                [10] "package:base"   

* 查看包的帮助文档

        > help.start()
        
### 标准包
标准(基本)包构成R 原代码的一个重要部分。它们包括允许R 工作的的基本函 数,和本文档中描述的数据集,标准统计和图形工具。在任何R 的安装版本中,它们 都会被自动获得。

### CRAN
一些包实现了特定的统计方法, 另外一些给予数据和硬件的访问接口,其他则作为教科书的补充材料。

### 命名空间
包有自己的命名空间(namespaces),并且现在所有基本的和推荐的的包都依赖于包datasets。

* 双冒号操作符：如`base::t`，允许选择特定命名空间定义的函数。
* 三冒号操作符：类似于双冒号，但可以隐藏对象。
