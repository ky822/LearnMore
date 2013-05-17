#!/usr/bin/perl -w

# 
# Enter a word, print its reverse form
# Can use
# reverse <STDIN>
#

use strict;

print "Enter a word:\n";
my $word = reverse <STDIN>;
print $word, "\n";

exit 0;

