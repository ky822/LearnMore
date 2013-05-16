#!/usr/bin/perl -w

# A program to use more m// programming magics
#
# 返回值：如果匹配成功，则返回string组成的列表，否则返回列表元素为1

@birds = ("nesting" =~ /(n.)s(.i)/);
print join(" ", @birds), "\n";
