#!/usr/bin/perl -w

# A program to use defined(...)

@list = ();
unless(defined(pop(@list))) {
		print "There are no more elements left.\n";
}
