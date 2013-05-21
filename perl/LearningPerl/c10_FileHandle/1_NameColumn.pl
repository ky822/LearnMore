#!/usr/bin/perl -w

# 
# Print Filename : Column Content
#

use strict;

print "Enter a filename: ";
my $file = <STDIN>;

open(FILEA, $file) || die("cannot open $file");
while(<FILEA>) {
		print "$file : $_\n";
}
close(FILEA);

exit 0;

