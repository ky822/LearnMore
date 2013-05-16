#!/usr/bin/perl -w

# A program to introduce list's basics
#
# perl中列表相当于数组

@shop = ('juice', 'apple', 'shoes', 'cats', 'water');
@short = @shop[0, 1, 4];	# list element from 0
$fruit = $shop[1];
$shop[1] = 'banana';
$sum = $#shop + 1;	# $#listname:得到list最后一个元素的位置
$sum1 = scalar(@shop);	#scalar返回列表元素个数
print $short[2] . "\n" .
	$fruit . "\n" .
	$shop[1] . "\n" .
	$sum . "\n" .
	$sum1 . "\n";

@shop[0, 4] = (50, 'notebook');	#允许直接赋值给列表
print @shop;
print "\n";

@market = ('meat', 'vegetable');
@all = (@shop, @market);	#允许直接合并两个列表
print @all;
print "\n";
