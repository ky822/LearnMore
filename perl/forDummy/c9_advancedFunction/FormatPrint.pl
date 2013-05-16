#!/usr/bin/perl -w

# A program to apply formatting to text & numbers to print.
#
# 1. printf(FORMAT, LIST):	格式化输出
# 2. sprintf:	格式化返回

$testNum = 283.357;
printf("%.2f\n", $testNum);
printf("%.2E\n", $testNum);
printf("Two thirds is about %.3f%%\n", 2/3*100);

$answer = sprintf("%.2e", $testNum);
print $answer . "\n";
