#!/usr/bin/perl -w

# A program to print string repeatedly

print "The string is ";
$str = <STDIN>;
print "The number is ";
chomp($num = <STDIN>);
$result = $str x $num;
print $result;
