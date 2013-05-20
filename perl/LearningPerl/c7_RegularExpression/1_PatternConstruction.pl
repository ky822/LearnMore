#!/usr/bin/perl -w

# 
# Construct some regular expressioins.
# 
# 1. at least one a followed by any number of b's
# 2. any number of blackslashes followed by any number of asterisks
# 3. 存在$whatever三个连续的拷贝
# 4. 任意5个字符，包括新行
# 5. 一行中word重复出现

use strict;

# 1
my $test1 = "abbb, baa, aba";
($test1 =~ /a+b*/)? print "Yes\n" : print "No\n";

# 2
my $test2 = "@#\$#%\\**&";
($test2 =~ /\\*\**/)? print "Yes\n" : print "No\n";

# 3
my $test3 = "aabbcc";
my $whatever = "aaa";
($test3 =~ /$whatever{3}/)? print "Yes\n" : print "No\n";

# 4
my $test4 = "abcd\n";
($test4 =~ /[\w\s]{5}/)? print "Yes\n" : print "No\n";

# 5
my $test5 = "I love you, and and I like it";
($test5 =~ /(^|\s)(\S+)(\s+\2)+/)? print "Yes\n" : print "No\n";


exit 0;

