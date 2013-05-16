#!/usr/bin/perl -w

# A program to print the custom no line of the list

print "Enter some lines, enter Ctrl-D to quit\n";
@lists = <STDIN>;
print "Enter the number is ";
chomp($no = <STDIN>);
print "The $no line of list is $lists[$no - 1]\n";
