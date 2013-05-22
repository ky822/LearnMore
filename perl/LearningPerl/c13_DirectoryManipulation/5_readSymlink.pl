#!/usr/bin/perl -w

# 
#	looks for all symlinked files
#

use strict;

foreach (<*>) {
		if (my $sym = readlink()) {
				print "$_ -> $sym\n";
		}
}

exit 0;

