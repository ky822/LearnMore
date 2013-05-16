#!/usr/bin/perl -w

# A program to tranform a string
#
# lc, \L:全行小写
# lcfirst, \l:首字母小写
# uc, \U:全行大写
# ucfirst, \u:首字母大写

$name1 = 'aBcDeF';
$name2 = 'GhIjKl';

print lc($name1) . "---" . uc($name2) . "\n";
print lcfirst($name2) . "---" . ucfirst($name1) . "\n";

print "\L$name1" . "---" . "\U$name1" . "\n";
print "\l$name1" . "---" . "\u$name1" . "\n";
