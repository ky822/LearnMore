#!/usr/bin/perl -w

# A program to use random number
#
# 1. rand(NUMBER): 产生0到number之间的随机数，默认number为1
# 2. srand(SEED):  产生随机数种子，默认为当前系统时间

srand();
print int(rand(10)), "\n";
