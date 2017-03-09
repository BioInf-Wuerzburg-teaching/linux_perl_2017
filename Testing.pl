use strict;
use warnings;

use Test::More; #Test tba ##

use_ok('roboter');

can_ok('roboter','new');
my$bob = new_ok('roboter'=>['roboter']);

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
