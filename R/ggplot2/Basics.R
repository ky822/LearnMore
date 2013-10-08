####################################### 1. Data & Mapping
require(ggplot2) # 类似于library
data(diamonds) # 加载数据集
set.seed(42) #  生成随机数,随机取样
small <- diamonds[sample(nrow(diamonds), 1000), ] # 数据框diamonds中取1000行,和全部的10列
head(small) # 取样本前几项观察
summary(small)
p <- ggplot(data=small, mapping=aes(x=carat,y=price)) # 将数据中的carat和price映射到坐标轴上
p + geom_point() # 选择映射的图像种类

p <- ggplot(data=small, mapping=aes(x=carat, y=price, shape=cut)) # 映射三个变量
p + geom_point() 

p <- ggplot(data=small, mapping=aes(x=carat, y=price, shape=cut, colour=color)) # 映射四个变量
p + geom_point() 

####################################### 2. 几何对象
# 几何对象的映射由 + geom_point()等同类函数 完成, 不同的几何对象要求的属性不同, 因此可以把属性写入映射函数中.
# 直方图, 连续数据分割
ggplot(small) + geom_histogram(aes(x=price))
ggplot(small) + geom_histogram(aes(x=price, fill=cut))
ggplot(small) + geom_histogram(aes(x=price, fill=cut), position="dodge")
ggplot(small) + geom_histogram(aes(x=price, fill=cut), position="fill")
# 柱状图,分类数据统计
ggplot(small) + geom_bar(aes(x=clarity))
ggplot() + geom_bar(aes(x=c(LETTERS[1:3]), y=1:3), stat="identity")
# 密度函数图
ggplot(small) + geom_density(aes(x=price, colour=cut))
ggplot(small) + geom_density(aes(x=price, fill=clarity)) # colour是曲线的颜色,fill是曲线包括区域的颜色
# 箱线图
ggplot(small) + geom_boxplot(aes(x=cut,y=price,fill=color))

####################################### 3. 标尺
# scale_y_log10()用来缩放y轴,以对数放大
ggplot(small) + geom_point(aes(x=carat, y=price, shape=cut, colour=color)) + scale_y_log10() + scale_color_manual(values=rainbow(7))

####################################### 4. 统计变换 
ggplot(small, aes(x = carat, y = price)) + geom_point() + scale_y_log10() + stat_smooth() # 增加数据回归线

####################################### 5. 坐标变换
# 坐标轴翻转, XY轴对换
ggplot(small) + geom_bar(aes(x=cut, fill=cut)) + coord_flip()

# 转换成极坐标
ggplot(small) + geom_bar(aes(x = factor(1), fill = cut)) + coord_polar(theta = "y")

####################################### 6. 图层
# R中使用+来表现图层的概念

####################################### 7. 分面
# 分面可以根据不同的条件对数据进行分组,然后分别画图
ggplot(small, aes(x = carat, y = price)) + geom_point(aes(colour = cut)) + scale_y_log10() + facet_wrap(~cut) + stat_smooth()

####################################### 8. 主题
p <- ggplot(small) + geom_boxplot(aes(x = cut, y = price, fill = color))
p + ggtitle("价格 vs 切工") + xlab("切工") + ylab("价格") # 标题,XY轴标题