#!/usr/bin/perl -w

# A program discussing nondecimal number systems
#
# HEX: 0x
# OCT: 0
# DEC:
# BIN: 0b

$hex = 0xA;
$oct = 012;
$bin = 0b1010;

print "0xA = $hex\n";
print "012 = $oct\n";
print "0b1010 = $bin\n";

$test = 'FFFF';
print hex($test) + 12 . "\n";
