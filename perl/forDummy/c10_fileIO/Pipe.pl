#!/usr/bin/perl -w

# pipe data in and out of a program

open(LSIN, 'ls -l ./ | ');
while(<LSIN>) {
		print $_, "\n";
}
