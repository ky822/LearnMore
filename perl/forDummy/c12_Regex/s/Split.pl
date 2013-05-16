#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: Split.pl
#
#        USAGE: ./Split.pl  
#
#  DESCRIPTION: Use the split Function
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Yan JIN (), jyfeather88@gmail.com
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 05/15/2013 07:28:24 PM
#     REVISION: ---
#===============================================================================

#use strict;
use warnings;
use utf8;


$theRecords = "Serling|Rod|Twilight Zone|";
@list1 = split(/(\|)/, $theRecords);
print join(' ', @list1);
