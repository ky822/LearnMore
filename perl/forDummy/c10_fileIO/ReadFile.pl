#!/usr/bin/perl -w

# A program to read from a text file
# 
# 1. $line = <INFILE>
# 2. $_

open(INFILE, 'test.txt');
while(<INFILE>) {
		print $_, "\n";
}
close(INFILE);

# <INFILE> 将读取的内容存于列表中
open(INFILE, 'test.txt');
@list = <INFILE>;
print @list;
close(INFILE);
