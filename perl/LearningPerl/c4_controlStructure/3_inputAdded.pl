#!/usr/bin/perl -w

# 
#	Enter 1 .. n, ended with 999 typed in. Then add all to print results
#

use strict;

my $sum = 0;
print "Enter number <= 999:\n";
while (<STDIN>) {
		chomp($_);
		if ($_ < 999) {
				$sum += $_;
		} else {
				last;
		}
}
print "Sum is $sum\n";

exit 0;

