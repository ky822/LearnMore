#!/usr/bin/perl -w

# A program about large blocks of texts
#
# <<'name' or <<"name"

$longString = <<'BLOCK';
abcdefg
hijklmn
opq rst uvw
xyz
BLOCK
print $longString;
