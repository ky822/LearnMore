#!/usr/bin/perl -w

# A program to print a list through three methods
#
# 1. print @listname
# 2. print $listname[0] . ' ' . $listname[1] ...
# 3. print ($listname[0], ' ', $listname[1] ...)

@color = ('mossy teal', 'burnt umber', 'bone white');

print @color;
print "\n";
print $color[0] . ' ' . $color[1] . ' ' . $color[2] . "\n";
print ($color[0], ' ', $color[1], ' ', $color[2], "\n");
