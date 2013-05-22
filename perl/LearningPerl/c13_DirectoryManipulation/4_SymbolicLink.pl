#!/usr/bin/perl -w

# 
#	Soft Link
#

use strict;

print "Usage: perl 4_SymbolicLink.pl Arg1, Arg2\n" if (0 == @ARGV);
symlink($ARGV[0], $ARGV[1]);

exit 0;

