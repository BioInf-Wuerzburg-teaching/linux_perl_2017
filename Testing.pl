use strict;
use warnings;
use Data::Dumper;

use Test::More; 

use_ok('roboter');
can_ok('roboter','new');
my $bob = new_ok('roboter'=>['bob']);

can_ok('roboter','arm');
is($bob->arm("links","oben"),"oben","arm_links_oben");
is($bob->arm("links","unten"),"unten","arm_links_unten");
is($bob->arm("rechts","oben"),"oben","arm_rechts_oben");
is($bob->arm("rechts","unten"),"unten","arm_rechts_unten");
done_testing()
