#!/usr/bin/perl -w

# A program about split, the important function for perl

$sentence = "It is time for our tea, sir.";
@list = split(/ /, $sentence);
@someList = split(/ /, $sentence, 3);

print @list;
print "\n";

print @someList;
print "\n";
