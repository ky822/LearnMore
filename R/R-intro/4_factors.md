# 因子
因子（factor）是一个对同长的其他向量元素进行分类（分组）的向量对象。
### 例子

	> state <- c("tas", "sa",  "qld", "nsw", "nsw", "nt",  "wa",  "wa",
	+                   "qld", "vic", "nsw", "vic", "qld", "qld", "sa",  "tas",
	+                   "sa",  "nt",  "wa",  "vic", "qld", "nsw", "nsw", "wa",
	+                   "sa",  "act", "nsw", "vic", "vic", "act")
	> statef <- factor(state)
	> statef
	 [1] tas sa  qld nsw nsw nt  wa  wa  qld vic nsw vic qld qld sa  tas sa  nt  wa 
	[20] vic qld nsw nsw wa  sa  act nsw vic vic act
	Levels: act nsw nt qld sa tas vic wa
	> levels(statef)
	[1] "act" "nsw" "nt"  "qld" "sa"  "tas" "vic" "wa" 
	
### tapply(ARG1, ARG2, ARG3)
将第三个函数作用于第一个参数，用第二个参数来定义。

	> incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56,
	+                  61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46,
	+                  59, 46, 58, 43)
	> incmenas <- tapply(incomes, statef, mean)
	> incmenas
	act      nsw       nt      qld       sa      tas      vic       wa 
	44.50000 57.33333 55.50000 53.60000 55.00000 60.50000 56.00000 52.25000 
	
	# 计算标准差
	> stderr <- function(x) sqrt(var(x)/length(x))	# 自定义标准差stderr函数
	> incster <- tapply(incomes, statef, stderr)
	> incster
	     act      nsw       nt      qld       sa      tas      vic       wa 
	1.500000 4.310195 4.500000 4.106093 2.738613 0.500000 5.244044 2.657536
	
### 有序因子
因子的水平是以字母顺序排列的。`ordered()`