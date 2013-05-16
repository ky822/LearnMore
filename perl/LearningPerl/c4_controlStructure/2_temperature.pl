#!/usr/bin/perl -w

# 
# 
#

use strict;

print "Enter temperature:";
chomp(my $in = <STDIN>);
if ($in < 68) {
		print "Too cold\n";
} elsif ($in >= 68 && $in <= 75) {
		print "Just right\n";
} else {
		print "Too hot\n";
}

exit 0;

