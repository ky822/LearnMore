#!/usr/bin/perl -w

# 
#	delelet files given as arguments
#

use strict;

print "Usage: perl 1_delete.pl Arg1, Arg2, ...\n" if (0 == @ARGV);

#foreach (@ARGV) {
# 		unlink($_);
#}
unlink(@ARGV);

exit 0;

