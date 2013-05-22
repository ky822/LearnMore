#!/usr/bin/perl -w

# 
#	Change a custom directory and list all files
#

use strict;

print "Enter a directory: ";
chomp(my $dir = <STDIN>);
opendir(DIR, $dir) or die("cannot cd $dir");
foreach my $file (sort(readdir(DIR))) {
		print "$file\n";
}
closedir(DIR);

exit 0;

