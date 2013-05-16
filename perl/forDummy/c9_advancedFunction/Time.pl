#!/usr/bin/perl -w

# A program to track time
#
# 1. time:
# 2. localtime(time): 返回一系列相关时间列表
# 3. gmtime: 格林尼治时间
# 4. sleep(SECOND): perl暂停sencond秒

print time, "\n";

print gmtime, "\n";

($second, $minute, $hour, $dayOfMonth, $month, $year, $weekDay, $dayOfYear, $isDST) = localtime(time);
$realMonth = $month + 1;
$fullYear = $year + 1900;
printf("%02d:%02d:%02d %02d/%02d/%02d\n", $hour, $minute, $second, $realMonth, $dayOfMonth, $fullYear);

sleep(2);
print "Hello\n";
