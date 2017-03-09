use strict;
use warnings;

use Test::More; #Test tba ##

use_ok('Weltherrschaft');

can_ok('Weltherrschaft','new');
my$bob = new_ok('Weltherrschaft'=>['roboter']);

can_ok('Weltherrschaft','bewegen_l');

is($bob->bewegen_l(),"-1","links_Test");

can_ok('Weltherrschaft','bewegen_r');
is($bob->bewegen_r(),"0","links_Test");

can_ok('Weltherrschaft','bewegen_vor');
is($bob->bewegen_vor(),"1","links_Test");

can_ok('Weltherrschaft','bewegen_zur');
is($bob->bewegen_zur(),"0","links_Test");

can_ok('Weltherrschaft','zeig_dich');

 

can_ok('Weltherrschaft','Geschlechtsumwandlung');  
can_ok('Weltherrschaft','Referendum');
#is('  


done_testing()
