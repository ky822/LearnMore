#!/usr/bin/perl -w

# 
# a,e,i,o,u
#

use strict;

print "Enter a list of words:";
my @list = <STDIN>;

foreach (@list) {
		#if (/a/i && /e/i && /i/i && /o/i && /u/i) {
		#		print "yes\n";
		#} else {
		#		print "no\n";
		#}

		(/a.*e.*i.*o.*u/i)? print "yes\n" : print "no\n";
}

exit 0;

