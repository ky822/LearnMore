#!/usr/bin/perl -w

# A program to search the beginning or end of a string
#
# ^abc: 以abc开头
# abc$: 以abc结尾
# \byo: 字串中存在以yo开头的单词
# yo\b: 字串中存在以yo结尾的单词
# \B: 	与\b相反

$test = "I beg your pardon";
if ($test =~ /^beg/) {
		print "beg\n";
} elsif ($test =~ /don$/) {
		print "pardon\n";
}

if ($test =~ /\byo/) {
		print "I\n";
} elsif ($test =~ /yo\b/) {
		print "your\n";
}
