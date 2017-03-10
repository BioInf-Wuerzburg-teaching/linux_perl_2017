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

can_ok('roboter','hand');
is($bob->hand("links","auf"),"auf","hand_links_auf");
is($bob->hand("links","zu"),"zu","hand_links_zu");
is($bob->hand("rechts","auf"),"auf","hand_rechts_auf");
is($bob->hand("rechts","zu"),"zu","hand_links_zu");

can_ok('roboter','name');
is($bob->name("franzi"),"franzi","name_change");
done_testing()
