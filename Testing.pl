use strict;
use warnings;

use Test::More; #Test tba ##

use_ok('roboter');

can_ok('roboter','new');
my$bob = new_ok('roboter'=>['roboter']);

my @methodlist = ('arm', 'hand', 'att_change');
can_ok('roboter', @methodlist);

is($bob->{arm_li},'unten', 'yay'); 

$bob->arm('links', 'hoch');

is($bob->{arm_li},'oben', 'yay');

$bob->arm('links', 'runter');

is($bob->{arm_li},'unten', 'yay'); 




is($bob->{hand_li},'offen', 'yay'); 

$bob->hand('links', 'zu');

is($bob->{hand_li},'geschlossen', 'yay');

$bob->hand('links', 'auf');

is($bob->{hand_li},'offen', 'yay'); 



is($bob->{arm_re},'unten', 'yay'); 

$bob->arm('rechts', 'hoch');

is($bob->{arm_re},'oben', 'yay');

$bob->arm('rechts', 'runter');

is($bob->{arm_re},'unten', 'yay'); 




is($bob->{hand_re},'offen', 'yay'); 

$bob->hand('rechts', 'zu');

is($bob->{hand_re},'geschlossen', 'yay');

$bob->hand('rechts', 'auf');

is($bob->{hand_re},'offen', 'yay'); 




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
#is('  


done_testing()
