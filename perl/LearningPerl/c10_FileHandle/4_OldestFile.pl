#!/usr/bin/perl -w

# 
#	Read a list of filenames and find the oldest one.
#	Print its name and its age.
#

use strict;

if (0 == @ARGV) {
		print "Usage: perl 4_OldestFile.pl arg1, arg2, ...\n";
}

my $oldest = ''; 
my $oldest_life = 0;
foreach (@ARGV) {
		my $age = -M;
		($age > $oldest_life) ? $oldest_life = $age : next; 
		$oldest = $_;
}
print "$oldest : $oldest_life\n";

exit 0;

