#!/usr/bin/perl -w

# A program to introduce Loop
#
# 1. while()
# 2. until():和while相反
# 3. next: 跳过本次循环，继续下次循环
# 4. last: 中止本次循环
# 5. foreach $VARIALBE (list) {}
# 6. map {..} @listname: 对list中每个记录都执行block中的内容，并返回执行后的list

@list = (23, 434, 53, 35, 55);
map {$_ >= 50 ? $_ = 50 : $_;} @list;
print join(' ', @list), "\n";
