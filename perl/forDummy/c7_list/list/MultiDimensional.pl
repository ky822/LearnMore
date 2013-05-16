#!/usr/bin/perl -w

# A program about multi-dimensional list

# create two-dimensional lists
@allInv = (
		['shelf 17B', '35J912', 'Tool chest, black', 11],
		['shelf 19A', '20N14', 'Crescent wrench set', 47]
);

# access the element in two-dimensional lists
print $allInv[1][3], "\n";
@topRow = @{$allInv[0]}; 
# @{@name[ROW]}:得到所有的记录
# @{@name[0]}:得到第一条记录
print join(' ', @topRow), "\n";

# 增加行或列
push(@allInv, ['Floor 2J', '82B927', 'Keyhole saw', 18]); # 增加行
$num = @allInv; # 得到列表记录总数
for ($i = 0; $i < $num; $i++) { # 增加列
		$allInv[$i][4] = 2013;
}
print join(' ', @{$allInv[2]}), "\n";

# Thriple-dimensional list
@thrInv = (
		[
				['', '', 0],
				['', '', 1]
		],
		[
				['', '', 2],
				['', '', 3]
		],
);
$one = $thrInv[0][1][2];
print $one, "\n";
