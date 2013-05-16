# CGI program to tell the user what time it is.
#  The user either got here with a URL of
#  "central" or "eastern" or nothing.
$TheZone = "Pacific";
if ($DesiredTimeZone eq 'central') {
  @TimeArr = localtime(time + 3600);
  $TheZone = "Central";
}
elsif($DesiredTimeZone eq 'eastern') {
  @TimeArr = localtime(time + 7200);
  $TheZone = "Eastern";
}
$Hour = $TimeArr[2];
$Minute = $TimeArr[1];
$TimeString = "$Hour:$Minute";
print <<"EndOfStuff"
ContentType: text/html

<html><head><title>At the tone...</title></head><body>
<h1>The time<h1>
In the <b>$TheZone</b> time zone, it is now $TimeString.
</body></html>
EndOfStuff
