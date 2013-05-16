#!/usr/bin/perl -w

# A program to operate big numbers in perl
# 
# use bignum; bignum module

$a = sqrt(44);
$b = 34 ** 25;
$c = 34 ** 250;
print "Before bignum\n";
print "sqrt(44) is $a\n";
print "34 ** 25 is $b\n";
print "34 ** 250 is $c\n";

use bignum;
$a = sqrt(44);
$b = 34 ** 25;
$c = 34 ** 250;
print "After bignum\n";
print "sqrt(44) is $a\n";
print "34 ** 250 is $c\n";
