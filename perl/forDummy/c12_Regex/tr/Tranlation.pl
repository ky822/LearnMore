#!/usr/bin/perl -w

# A program to use tr///
#
# modifier		for tr///
# c				忽略模式，替换所有字符
# d				删除匹配成功，替换失败的字符
# s				删除替换后重复的字符

$test = 123123;
$test =~ tr/0-2/\t/c;
print $test, "\n";
