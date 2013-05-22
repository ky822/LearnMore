#!/usr/bin/perl -w

# 
#	Hard Link
#

use strict;

print "Usage: perl 3_HardLink.pl Arg1, Arg2\n" if (0 == @ARGV);
link($ARGV[0], $ARGV[1]);

exit 0;

