#!/usr/bin/perl -w

# A program to import prewritten perl code into your programs.
#
# require(FILENAME): 调用其他pl文件中的子程序

require("LocalVariable.pl");
print JustAdd(1,3), "\n";
