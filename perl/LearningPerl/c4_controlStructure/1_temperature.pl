#!/usr/bin/perl -w

# 
# 
#

use strict;

print "Enter temperature:";
chomp(my $in = <STDIN>);
($in > 72)? print "Too hot\n" : print "Too cold\n";

exit 0;

