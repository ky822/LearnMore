#!/usr/bin/perl -w

# A program to make inexact matches in regular expressions

# (a|A):表示a或A
if ("baby" =~ /(a|b)/) {
		print "baby\n";
}

# 寻找类似的元素
if ("indian" =~ /in(d|dian|agate)/) {
		print "indian\n";
}

# 使用通配符
if ("chu" =~ /c.u/) {
		print "chu\n";
}

# [...]匹配字符集
if ("hello" =~ /[wd]/) {
		print "hello\n";
} elsif ("123456" =~ /[0-9]/) {
		print "198807\n";
}

# 代码替代范围
# \d	-	[0-9]
# \w	-	[a-zA-Z]
# \s	-	[\t\n\r\f]
# \D	-	[^0-9]
# \W	-	[^a-zA-z]
# \S	-	[^\t\n\r\f]
if ("he" =~ /\d/) {
		print "yeah\n";
}
