#!/usr/bin/perl -w

# 
# Write to a output file from a input file with replacement some patterns
#

use strict;
print "Enter input file name: ";
my $input = <STDIN>;
chomp($input);
open(INPUT, $input) or die("Cannot open $input");
print "Enter output file name: ";
my $output = <STDIN>;
chomp($output);
open(OUTPUT, "> $output") or die("Cannot open $output");

while(<INPUT>) {
		s/aaa/abc/;
		print OUTPUT $_;
}

close(INPUT);
close(OUTPUT);

exit 0;

