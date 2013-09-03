### 1. 因子和水平

值可以分为名义型（nominal），顺序型（ordinal）和连续型（continuous）3种。

* 名义型：红、蓝、绿
* 顺序型：差、良、优
* 连续型：1、2、3

R中使用因子（factor）来表示名义型和顺序型。

    > colors <- c('green', 'red', 'yellow')    > factor(colors)    [1] green  red    yellow    Levels: green red yellow

