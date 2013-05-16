#! /usr/bin/perl -w

# A program to display character tables

$column = 1;
$out = '';
for ($i = 33; $i <= 126; $i++) {
		$out .= sprintf("%3s", $i) . "=" . chr($i) . " ";
		# chr(n):转成数字n代表的ASCII码中的字符
		# $a .= $b equal $a = $a . $b
		if (($column % 10) == 0) {$out .= "\n"}
		$column += 1;
}
print $out;
