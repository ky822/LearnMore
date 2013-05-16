#!/usr/bin/perl -w

# 
#	read a list of strings, then print them reversely with reverse()
#

use strict;

print "Enter a list of strings (Use Ctrl + D to terminate): \n";
my @lists = <STDIN>;
while (my $line = pop(@lists)) {
		print $line;
}


exit 0;

