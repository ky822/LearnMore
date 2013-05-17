#!/usr/bin/perl -w

# 
#	
#

use strict;

print "Enter a list of strings: \n";
my @list = <STDIN>;
my $num = shift(@list);
chomp($num);
foreach my $key (@list) {
		chomp($key);
		printf "%${num}s\n", $key;
}

exit 0;

