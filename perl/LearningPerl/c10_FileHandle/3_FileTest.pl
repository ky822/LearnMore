#!/usr/bin/perl -w

# 
# Enter a list of filenames, and check which one is readable
#

use strict;

print "Enter a list of filenames: \n";
my @files = <STDIN>;
foreach (@files) {
		chomp();
		if (-e) {
				print "$_ exists.\n";
		} else {
				print "$_ not exists.\n";
		}
}

exit 0;

