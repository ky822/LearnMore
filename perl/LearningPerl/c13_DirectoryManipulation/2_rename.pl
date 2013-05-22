#!/usr/bin/perl -w

# 
#	Rename arg1 file to arg2 file
#

use strict;

print "Usage: perl 2_rename.pl Arg1, Arg2\n" if (0 == @ARGV);
rename($ARGV[0], $ARGV[1]);

exit 0;

