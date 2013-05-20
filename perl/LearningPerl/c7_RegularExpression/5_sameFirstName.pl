#!/usr/bin/perl -w

# 
# Look through /etc/passwd
# print login name with the same first name
#  
# perl NAME < /etc/passwd
#

use strict;

my %map = ();
while(<STDIN>) {
		(my $name, my $n1, my $n2, my $n3, my $real, my $rest) = split(/:/);
		(my $first, my $second) = split(' ', $real);
		$map{$first} .= " $name";
}

foreach (keys(%map)) {
				print "$map{$_}\n";
}

exit 0;

