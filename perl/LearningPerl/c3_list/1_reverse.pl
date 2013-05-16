#!/usr/bin/perl -w

# A program to print out the list in reverse order.

# print "The string is \n";
# @list = ();
# while(($in = <STDIN>) ne "\n") {
# 		chomp($in);
# 		push(@list,$in);
# }
# @reList = reverse(@list);
# print join(' ', @reList), "\n";

print "Enter some lines, then press Ctrl-D\n";
@line = <STDIN>;
@reverseLine = reverse(@line);
print @reverseLine;
