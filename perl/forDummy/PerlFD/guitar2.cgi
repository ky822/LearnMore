use CGI;
$q = new CGI();

print $q->header('text/html'),
  $q->start_html(-title => 'Guitar Information'),
  $q->p('Thank you for considering our guitars. Here is' .
    ' the information you requested.');

@TheTypes = qw(GoyaStandard GoyaConcert VegaArtisGrand
  HarmonySteel);
foreach $ThisType (@TheTypes) {
  if($q->param($ThisType)) {
    $DisplayThis = &GetData($ThisType);
    print $q->hr, $q->p($DisplayThis);
  }
}
print $q->end_html;
