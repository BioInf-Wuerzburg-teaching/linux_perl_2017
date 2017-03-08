use strict;
use warnings;

use Test::More; #Test tba ##

use_ok('Weltherrschaft');



can_ok('Weltherrschaft','bewegen_l');
my @pos = (0,0);

is(my$robot->bewegen_l(),$pos[0],$pos[0]-1);

can_ok('Weltherrschaft','bewegen_r');
can_ok('Weltherrschaft','bewegen_vor');
can_ok('Weltherrschaft','bewegen_zur');



 

can_ok('Weltherrschaft','Geschlechtsumwandlung');  
can_ok('Weltherrschaft','Referendum');
#is('  


done_testing()
