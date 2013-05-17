#!/usr/bin/perl -w

# 
# print key & value blow
#
# INPUT		OUTPUT
# red		apple
# green		leaves
# blue		ocean
#

use strict;

my %colors = ("red" => "apple", "green" => "leaves", "blue" => "ocean");
while((my $key, my $value) = each(%colors)) {
		print "$key	-	$value\n";
}

exit 0;

