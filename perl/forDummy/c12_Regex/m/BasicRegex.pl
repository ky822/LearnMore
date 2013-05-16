#!/usr/bin/perl -w

# A programe to introduce how to use regular expression.
# 
# m//: 匹配，找到则返回true, m//可简化为//
# metacharacters: 在正则中有特殊意义，包括
# ^ $ + * ? . | () {} \ []
# 在需要用到这些时，前面加反斜杠，如\?
# 可以用quotemeta(STRING)来提示如何使用

if("hello#me" =~ m/#/) {
		print "hello\n";
}

$test = "what";
if("hello#me" !~ m/$test/) {
		print "fuck\n";
}else {
		print "what\n";
}

$str = quotemeta("abc^def.ghi]");
if($str =~ /\./) {
		print "success\n";
}
