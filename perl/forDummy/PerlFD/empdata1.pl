#!/usr/bin/perl -w

# empdata1.pl: a very simple employee database application.
#  This program reads a text file that is an employee
#  database and lets you query it by ID number.
#
#  Each record is on a single line. Each field in the
#  record is separated by a single tab character
#  ("\t"). The database has four fields:
#  - Last name
#  - First name
#  - ID number
#  - Telephone extension

# The name of the database file
$TheDB = 'edata.txt';	# 注意单引号和双引号的区别

# Open the database file but quit if it doesn't exist
open(INDB, $TheDB) or die "The database $TheDB could " .
  "not be found.\n";

while(1) { # Loop forever
  print "\nDo you want to search by employee ID (I), " .
    " or quit (Q): ";
  $DoSearch = <STDIN>;	# <STDIN>:从标准输入读取
  chomp($DoSearch);
  $DoSearch =~ tr/A-Z/a-z/;	
  # 将输入转成小写
  if($DoSearch eq 'q') { last }	# last:结束当前循环
  # Check if they did *not* say i or I
  unless($DoSearch eq 'i') { # unless():和if()作用相反
    print "You must enter either I or Q.\n";
    next; # 结束本次循环，继续下次循环
  }

  # Ask them what ID they want to search for
  print "Search for ID number: ";
  $SearchFor = <STDIN>;
  chomp($SearchFor);
  seek(INDB, 0, 0);	# 如果本次不是第一次查询，则将指针指向数据库文件头
  # Reset the count of successes
  $SuccessCount = 0;
  # Loop through the records in the file
  while(<INDB>) {
    $TheRec = $_;
    chomp($TheRec);
    ($LastName, $FirstName, $ID, $Tel) =
      split(/\t/, $TheRec);	#:split():使用正则断句
    if($ID eq $SearchFor) {
      $SuccessCount = $SuccessCount + 1;
      print "$ID: $FirstName $LastName, ext. ".
        "$Tel\n";
    } # End of if
  } # End of while(<INDB>)
  if($SuccessCount == 0) { print "No records found.\n" }
  else { print "$SuccessCount records found.\n" }
} # End of while(1)

print "Program finished.\n";
