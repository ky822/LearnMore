#!/usr/bin/perl -w

# A program to compute the circumference of a circle with a custom radius

print "Please type in the radius: ";
# 为什么要用chomp，因为键盘以回车结束，需要使用chomp把最后一个字符，即回车，删除
chomp($radius = <STDIN>);
$circumference = 2 * 3.14 * $radius;
print "The circumference of a circle with a radius of 12.5 is $circumference.\n";
