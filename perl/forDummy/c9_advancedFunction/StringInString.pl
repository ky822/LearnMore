#!/usr/bin/perl -w

# A program to look for strings within strings
#
# 1. substr(FULLSTRING, POSITION, LENGTH):
# 2. index(FULLSTRING, SUBSTRING, POSITION):从position处开始寻找，默认为0，找到首个返回，否则返回-1
# 3. rindex(...):和index相反，返回最后一个匹配的字串

$origin = "how are you";

print substr($origin, 4, 3), "\n";
print substr($origin, -3, 3), "\n"; # origin中h是位置0，它的右边为正数位置，左边为负数

substr($origin, 4, 0) = "old "; # substr也可以用来增加或者替换原来的string
print $origin . "\n";

print index($origin, "old"), "\n";
print index($origin, "old", 8), "\n";

print rindex($origin, "o"), "\n";
