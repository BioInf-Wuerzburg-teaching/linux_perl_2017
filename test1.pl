use strict;
use warnings;
use Test::More;# tests=>19;
#anzahl tests bei finaler Version angeben
#use Robot; #Wird ersetzt durch require_ok oder use_ok Befehl

use_ok('Robot');


#@meth=('new','links_hoch','links_runter');
can_ok('Robot','new');
my $bob = new_ok('Robot'=>['bob']);


can_ok('Robot','name');
my $name = $bob->name();
is($name,'bob','nametest');
#isa_ok($bob,'Robot');


can_ok('Robot','rechts_pos_a');
is($bob->rechts_pos_a(),'unten','def_rechts_a');


can_ok('Robot','links_hoch');
can_ok('Robot','links_runter');
can_ok('Robot','links_pos_a');
can_ok('Robot','rechts_hoch');
#my $position_des_rechten_arms = $bob->rechts_hoch();

is ($bob->rechts_hoch(),'hoch','rechterArmtest');

can_ok('Robot','rechts_runter');
can_ok('Robot','rechts_pos_a');


can_ok('Robot','move_right');
can_ok('Robot','move_left');
can_ok('Robot','move_back');
can_ok('Robot','move_forward');
can_ok('Robot','name');

done_testing;



    
