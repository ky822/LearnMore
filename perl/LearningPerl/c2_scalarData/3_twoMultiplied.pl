#!/usr/bin/perl -w

# A program to compute the product of two custom numbers.

print "1st number is ";
chomp($one = <STDIN>);
print "2st number is ";
chomp($two = <STDIN>);
$product = $one * $two;
print "The product is $product\n";
