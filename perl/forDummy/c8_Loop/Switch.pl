#!/usr/bin/perl -w

# A program to use switch case statements

use Switch;

$which = 'one';
switch($which) {
		case('one') {print $which."\n";}
		case('two') {print $which."\n";}
		case('three') {print $which."\n";}
		case('four') {print $which."\n";}
}
