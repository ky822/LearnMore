#!/usr/bin/perl -w

# 
#	Change a custom directory and list all files
#

use strict;

print "Enter a directory: ";
chomp(my $dir = <STDIN>);
chdir($dir) or die("cannot cd $dir");
while (my $file = <.* *>) {
		print "$file\n";
}

exit 0;

