#!/usr/bin/perl -w

# A program to use m// operator modifiers
#
# Modifier	Description
# g			全局搜索
# i			忽略大小写
# m			允许string多行
# o			一次编译模式
# s			模式单行
# x			允许空格注释

if ("nesting" =~ /(N.)S/i) {
		print "true\n";
}

@list = ("nesting" =~ /N./ig);
print join(' ', @list), "\n";
