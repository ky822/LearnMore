#!/usr/bin/perl -w

# A program to use the grep function

@names = ('JIN', 'ZHU', 'XUE', 'JIA', 'Zhou');
@nameJ = grep(/^j/i, @names);
print join(' ', @nameJ), "\n";
$numZ = grep(/^z/i, @names);
print $numZ . "\n";
