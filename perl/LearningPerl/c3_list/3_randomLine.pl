#!/usr/bin/perl -w

# A program to print random number line of list

srand; # 初始化随机数产生器

print "Enter some lines:\n";
@lists = <STDIN>;
$num = @lists;
$no = rand($num); #产生0到num大小的随机数
print $lists[$no - 1];
