#!/usr/bin/perl -w

# A program to get the match results
#
# 如果正则表达式内出现(),则匹配或替换后，依次赋给$1,$2...
# $1 第一个匹配的字串
# $2 第二个匹配的字串
# ...
# ?: 阻止对应匹配的字串存于$n

$test = "nesting";
if ($test =~ /(n.)s(.i)/) {
		print "ture\n";
}
print "$1\n$2\n";
