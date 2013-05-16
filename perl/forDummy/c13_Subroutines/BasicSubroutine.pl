#!/usr/bin/perl -w

# A program to introduce a custom subroutine.
#
# sub NAME { BLOCK }

sub justAdd {
		return ($_[0] + $_[1]);
}

print justAdd(1, 2), "\n";
