# First get the form data. CGI_Lite will only return
#  the values of checkboxes that are selected by
#  the user, so you don’t have to check for “on”
#  and “off”
use CGI_Lite;
$InCGIq = new CGI_Lite();
@FormData = $InCGI->parse_form_data();

print <<EndOfTop;
Content-type: text/html

<html><head><title>Guitar Information</title></head><body>
<p>Thank you for considering our guitars. Here is the
information you requested.
EndOfTop

@TheTypes = qw(GoyaStandard GoyaConcert VegaArtistGrand
  HarmonySteel);
foreach $ThisType (@TheTypes) {
  if($q->param($ThisType)) {
    $DisplayThis = &GetData($ThisType);
    print "<hr><p>$DisplayThis\n";
  }
}
while(@FormData) {
  $ThisGuitar = shift(@FormData); # The item name
  $ThisOn = shift(@FormData); # Toss this out
  $DisplayThis = &GetData($ThisGuitar);
  print “<hr>$DisplayThis”;
}

print "</body></html>\n";
