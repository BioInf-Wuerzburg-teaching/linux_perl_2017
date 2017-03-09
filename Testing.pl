use strict;
use warnings;

use Test::More; #Test tba ##

use_ok('roboter');

can_ok('roboter','new');
my$bob = new_ok('roboter'=>['roboter']);

can_ok('roboter','att_change');
is($bob->att_change("arm_li","oben"),"oben","arm_links_oben");
is($bob->att_change("arm_re","oben"),"oben","arm_rechts_oben");
is($bob->att_change("hand_li","auf"),"auf","hand_links_auf");
is($bob->att_change("hand_re","auf"),"auf","hand_rechts_auf");
is($bob->att_change("Geschlecht","XY"),"XY","Gechlecht_geändert");

can_ok('roboter','bewegen_l');

is($bob->bewegen_l(),"-1","links_Test");

can_ok('roboter','bewegen_r');
is($bob->bewegen_r(),"0","links_Test");

can_ok('roboter','bewegen_vor');
is($bob->bewegen_vor(),"1","links_Test");

can_ok('roboter','bewegen_zur');
is($bob->bewegen_zur(),"0","links_Test");

can_ok('roboter','zeig_dich');

can_ok('roboter','Geschlechtsumwandlung');  
can_ok('roboter','Referendum');

done_testing()
