use strict;
use warnings;

use Test::More; 

use_ok('roboter');
can_ok('roboter','new');
my $bob = new_ok('roboter'=>['bob']);

can_ok('roboter','change');
is($bob->change("arm","links","oben"),"oben","change_1");
is($bob->change("arm","links","unten"),"unten","change_2");
is($bob->change("arm","rechts","oben"),"oben","change_3");
is($bob->change("arm","rechts","unten"),"unten","change_4");
is($bob->change("hand","links","oben"),"oben","change_5");
is($bob->change("hand","links","unten"),"unten","change_6");
is($bob->change("hand","rechts","oben"),"oben","change_7");
is($bob->change("hand","rechts","unten"),"unten","change_8");

can_ok('roboter','veraendern');
#is($bob->veraendern()

can_ok('roboter','name');
is($bob->name("franzi"),"franzi","name_change");
done_testing()
