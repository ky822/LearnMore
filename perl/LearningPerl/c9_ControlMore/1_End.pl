#!/usr/bin/perl -w

# 
#
#

use strict;

while (1) {
		print "Enter first number: ";
		my $first = <STDIN>;
		chomp($first);
		last if 'end' eq $first;

		print "Enter second number: ";
		my $second = <STDIN>;
		chomp($second);
		last if 'end' eq $second;

		printf "$first + $second = %d\n", $first + $second;
		
}

exit 0;

