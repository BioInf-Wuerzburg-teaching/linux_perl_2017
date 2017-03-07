use strict;
use warnings;
use robot;

my$willi=robot->new("Willi");
$willi->links_hoch;

my$pos=$willi->{pos};
print "$willi->{pos}[0] \n";
print "$willi->{pos}[1] \n";
$willi->schritt_rechts();

$pos=$willi->{pos};

print "$willi->{pos}[0] \n";
print "$willi->{pos}[1] \n";
