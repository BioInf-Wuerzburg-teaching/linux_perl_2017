use strict;
use warnings;

use Test::More; #Test tba ##

use_ok('roboter');

can_ok('roboter','new');
my$bob = new_ok('roboter'=>['roboter']);

can_ok('roboter','att_change');
is($bob->att_change("arm_li","oben"),"oben","arm_links_oben");
is($bob->att_change("arm_re","oben"),"oben","arm_rechts_oben");
is($bob->att_change("hand_li","offen"),"offen","hand_links_auf");
is($bob->att_change("hand_re","offen"),"offen","hand_rechts_auf");
is($bob->att_change("Geschlecht","XY"),"XY","Gechlecht_geändert");

my @methodlist = ('arm', 'hand', 'att_change');
can_ok('roboter', @methodlist);


#is($bob->{arm_li},'unten', 'yay'); 
is($bob->arm('links', 'hoch'),'oben', 'arm_li ist oben');

#$bob->arm('links', 'runter');

is($bob->arm('links', 'runter'),'unten', 'arm_li ist unten'); 


#$bob->hand('links', 'zu');

is($bob->hand('links', 'zu'),'geschlossen', 'hand_li ist geschlossen');

#$bob->hand('links', 'auf');

is($bob->hand('links', 'auf'),'offen', 'hand_li ist offen'); 

#---------------------------------------------------------------------------------------------------

is($bob->arm('rechts', 'hoch'),'oben', 'arm_re ist oben');

is($bob->arm('rechts', 'runter'),'unten', 'arm_re ist unten'); 

is($bob->hand('rechts', 'zu'),'geschlossen', 'hand_re ist geschlossen');

is($bob->hand('rechts', 'auf'),'offen', 'hand_re ist offen'); 










$bob->att_change('pos_x',0);
$bob->att_change('pos_y',0);


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
