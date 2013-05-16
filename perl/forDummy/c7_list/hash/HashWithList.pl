#!/usr/bin/perl -w

# crete hashes consisting of lists

# 创建
%allInvByNum = (
		'35J912' => ['Shelf 17B', 'Tool chest, black', 11],
		'20N14' => ['Shelf 19A', 'Crescent wrench set', 47]
);

# Access
print $allInvByNum{'20N14'}[2], "\n";

# 增加记录
$allInvByNum{'82B297'} = ['Floor 2J', 'Keyhole saw', 18];

# Access
@tools = @{$allInvByNum{'82B297'}};
print join(' ', @tools), "\n";
