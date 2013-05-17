#!/usr/bin/perl -w

# 
# Enter 0~9, print its name
#

use strict;
use Switch;

while (1) {
		print "Enter a number: ";
		my $num = <STDIN>;
		chomp($num);
		&name($num); 
}

sub name {
		switch($_[0]) {
				case 0 {print "zero\n";}
				case 1 {print "one\n";}
				case 2 {print "two\n";}
				case 3 {print "three\n";}
				case 4 {print "four\n";}
				case 5 {print "five\n";}
				case 6 {print "six\n";}
				case 7 {print "seven\n";}
				case 8 {print "eight\n";}
				case 9 {print "nine\n";}
				else   {print "Please enter num in [0 ~ 9]\n"}
		}
}

exit 0;

