#!/usr/bin/perl -w

# A program to use the my and local functions
#
# 两者功能一直，局部变量
# 1. my: perl 5
# 2. local: perl 4

sub JustAdd {
		my($first) = shift(@_);
		my($second) = shift(@_);
		return($first + $second);
}

print JustAdd(1,2), "\n";
