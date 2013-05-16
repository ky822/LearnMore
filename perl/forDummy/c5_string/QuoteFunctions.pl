#!/usr/bin/perl -w

# A program to introduce quote function, q and qq
#
# q = '', qq = ""
# why use q & qq ?

$said = 'This isn\'t Bill\'s shirt.';
$saidQ = q/This isn't Bill's shirt./;

print $said."\n";
print $saidQ."\n";
