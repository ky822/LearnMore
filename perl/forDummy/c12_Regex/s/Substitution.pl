#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Substitution.pl
#
#        USAGE: ./Substitution.pl  
#
#  DESCRIPTION: s/pattern/string/ 将pattern匹配到的结果替换成string
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Yan JIN (), jyfeather88@gmail.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 05/15/2013 07:09:58 PM
#     REVISION: ---
#===============================================================================

#use strict;
use warnings;
use utf8;

$test = 'hello world';
$count = ($test =~ s/o/O/g);
print $count, "\n";

# 若不使用string =~ s///，则s///作用于$_
$words = "1. apple\n2.banana\n3. strawberry\n";
$words =~ s/^(\d+)/Line $1/g;
print $words . "\n";

# Modifier e
$what = "123";
$what =~ s/(\d+)/$1 + 1/;
print $what, "\n";
$what = "123";
$what =~ s/(\d+)/$1 + 1/e;
print $what, "\n";

