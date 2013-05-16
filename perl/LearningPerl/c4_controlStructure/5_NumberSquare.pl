#!/usr/bin/perl -w

# 
#	Print a table of numbers and their squares
#

use strict;

my($a, $b);
until(++$a > 32) {
		$b = $a * $a; 
		printf "%5g %8g\n", $a, $b;
}

exit 0;

