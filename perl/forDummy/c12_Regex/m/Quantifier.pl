#!/usr/bin/perl -w

# A program to use quantifiers for numerical matches
#
# Symbol	Meaning
# +			1 or more
# *			0 or more
# ?			0 or 1
# {n}		n
# {n,}		at least n
# {n,m}		n~m

if (123 =~ /\d{3}/) {
		print "123\n";
}

if ("NEXT" =~ /N.+T/) {
		print "NEXT\n";
}
