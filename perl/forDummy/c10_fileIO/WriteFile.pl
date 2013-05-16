#!/usr/bin/perl -w

# A program to write text to a file
#
# 1. print OUTFILE LIST:
# 2. printf OUTFILE FORMAT LIST:
# 3. select(FILE): 选择句柄

open(OUT, ">>test.txt") or die "Cannot open this file.\n";
for($i = 0; $i < 5; $i++) {
		printf OUT "Line %.2d\n", $i;
}
close(OUT);
