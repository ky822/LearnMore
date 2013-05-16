#!/usr/bin/perl -w

# A program to add or remove elements in a list
#
# push:		add to right side
# unshift:	add to left side
# pop:		remove from right side
# shift:	remove from left side
# splice(@name, start, num, element):从name列表的start开始替换num个元素,插入元素element

@someList = (8, 'eight', 9, 'nine');
@tenList = (10, 'ten');
push(@someList, @tenList);
unshift(@someList, "seven");
print @someList;
print "\n";

pop(@someList);
shift(@someList);
print @someList;
print "\n";

$gotOne = splice(@someList, 1, 1, '');	# splice返回值为删除的内容，删除多个时，返回列表
@gotSome = splice(@someList, 2, 2, ('5', '6'));
print @someList;
print "\n";
print $gotOne . "\n";
print @gotSome;
print "\n";
