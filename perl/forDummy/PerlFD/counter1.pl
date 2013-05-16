#!/usr/bin/perl -w
# 告诉系统perl程序位置，-w 表示提示警告提示

# counter1.pl: one way to count the characters, words, and
#  lines in a text file.

# The name of the file that will be counted
$TheFile = "sample.txt";

open(INFILE, $TheFile) or die "The file $TheFile could " .
  "not be found.\n";
# INFILE是打开后得到的文件句柄
# or die "..." 如果打开文件失败，则中止程序执行，并提示信息

# Initialize the counters
$CharCount = 0;
$WordCount = 0;
$LineCount = 0;

while(<INFILE>) {
# <文件句柄>:读取文件下一行，直到文件结束
  $TheLine = $_; # $_：暂存刚刚执行语句得到的结果。这里将读到的行保存到$TheLine
  chomp($TheLine); # chomp()：删除行结束符
  $LineCount = $LineCount + 1;   
  $LineLen = length($TheLine);	# length(...)：得到该行的字符长度
  # We now know how many characters (减去行末结束符) are on this line
   $CharCount = $CharCount + $LineLen;

  # Do the tricky stuff for counting words on the line

  if($TheLine eq "") { next };	# next：跳出本次循环，继续下次循环。如果该行为空，则继续下一行
  # The line has at least one word on it
  $WordCount = $WordCount + 1;
  # Now loop through each character on this line
  #  to look for words
  $CharPos = 0; # Position we are in the line
  # Check for line end; if not, check for a space
  until($CharPos == $LineLen) { # until(...)：和while循环刚好相反
    if(substr($TheLine, $CharPos, 1) eq " ")
	# substr: 在TheLine中从CharPos位置开始找一个字符，等于空格
      { $WordCount = $WordCount + 1 }
    $CharPos = $CharPos + 1;
  } # End of until
} # End of while(<INFILE>) loop

# All finished, so print out the results

print "For the file $TheFile:\n";
print "Number of characters $CharCount\n";
print "Number of words    $WordCount\n";
print "Number of lines    $LineCount\n";

# perl -c counter1.pl
# -c: 检查脚本语法错误
