#!/usr/bin/perl -w

# 
#	Enter 2,2
#	print "Two + two = four"
#

use strict;

my %map = (
		-1 => '~one',
		-2 => '~two',
		-3 => '~three',
		-4 => '~four',
		-5 => '~five',
		-6 => '~six',
		-7 => '~seven',
		-8 => '~eight',
		-9 => '~nine',
		0 => 'zero',
		1 => 'one',
		2 => 'two',
		3 => 'three',
		4 => 'four',
		5 => 'five',
		6 => 'six',
		7 => 'seven',
		8 => 'eight',
		9 => 'nine',
);

print "Enter two number: \n";
my @list = <STDIN>;
chomp($list[0], $list[1]);
&add($list[0], $list[1]);

sub add {
		my($left, $right) = @_;
		my $sum = $left + $right;

		$left = ucfirst(&name($left));
		$right = &name($right);
		$sum = &name($sum);

		print "$left + $right = $sum\n";
}

sub name {
		($map{$_[0]}) ? return $map{$_[0]} : return $_[0];
}

exit 0;

