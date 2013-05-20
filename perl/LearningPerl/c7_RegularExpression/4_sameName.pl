#!/usr/bin/perl -w

# 
# Look through /etc/passwd
# print same login name and its real name
# 
# perl NAME < /etc/passwd
#

use strict;

my %map = ();
while(<STDIN>) {
		(my $name, my $rest) = split(/:/);
		$map{$name} += 1;
}

foreach (keys(%map)) {
		if ($map{$_} > 0) {
				print "$_\n";
		}
}

exit 0;

