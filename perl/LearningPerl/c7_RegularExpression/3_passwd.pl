#!/usr/bin/perl -w

# 
# Look through /etc/passwd
# print login name and its real name
# 
# perl NAME < /etc/passwd
#

use strict;

while(<STDIN>) {
		my @list = split(/:/);
		foreach (@list) {
				s/,.*//;
		}
		print join(":", @list);
}

exit 0;

