#!/usr/bin/perl -w

# A program to use List::Util module
#
# 1. first {block} list: 对list执行block中的语句，返回首个满足block的元素
# 2. max(list): 返回list中最大的元素
# 3. maxstr(list): 返回list中alphabeta顺序最后面的元素
# 4. min(list): 返回list中最小的元素
# 5. minstr(list): 返回list中alphabeta顺序最前面的元素
# 6. shuffle(list): 随机顺序返回list
# 7. sum(list): 返回list中元素的总和,只能针对数字变量

use List::Util qw(first max maxstr min minstr shuffle sum);
# use modulename qw(...):表示仅使用modulename模块中的...个子函数
# qw():单词列表引号

@nums = (12, 70, 27, 48);
print "\@nums is ", join(' ', @nums), "\n";
# join(seperator, list):在list元素中间插入分割符后返回得到的string
@words = ('fluffy', 'shiny', 'juicy', 'nice');
print "\@words is ", join(' ', @words), "\n\n";

$above40 = first {$_ > 40} @nums;
print "The first value in \@nums over 40 is $above40\n";
$highNum = max(@nums);
print "The highest number in \@nums is $highNum\n";
$lastWord = maxstr(@words);
print "The last word alphabetically in \@words is $lastWord\n";

@mixedUp = shuffle(@nums, @words); # suffle可以让多个list合成一个，并随机化
print "The two lists, combined and randomized:\n", join(' ', @mixedUp), "\n";
$total = sum(@nums);
print "The sum of the numbers in \@nums is $total\n";
