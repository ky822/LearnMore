#!/usr/bin/perl -w

# 
#	Enter some words, print numbers for each word
#

use strict;

print "Enter some words(Use Ctrl + D to terminate):\n";
my @list = <STDIN>;
my %map = ();
foreach my $word (@list) {
		chomp($word);
		$map{$word} += 1;
}

my @keyList = sort(keys(%map));
foreach my $key (@keyList) {
		print "$key	-	$map{$key}\n";
}

exit 0;

