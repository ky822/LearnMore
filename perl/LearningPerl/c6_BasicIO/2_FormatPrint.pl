#!/usr/bin/perl -w

# 
#	
#

use strict;

print "Enter a list of strings: \n";
my @list = <STDIN>;
foreach my $key (@list) {
		chomp($key);
		printf "%20s\n", $key;
}

exit 0;

