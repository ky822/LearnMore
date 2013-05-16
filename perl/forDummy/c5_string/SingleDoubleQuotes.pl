#!/usr/bin/perl -w

# A program to contrast single and double quotes
#
# 单引号和双引号都代表字符串，但某些情况下有所不同
# single quotes '':单引号不转译转义字符，如\n，和变量，如$bookS
# double quotes "":

$bookS = 'for dummies\n';

$lineS = 'This is a $bookS' . "\n";
$lineD = "This is a $bookS" . "\n";

print $lineS;
print $lineD;
