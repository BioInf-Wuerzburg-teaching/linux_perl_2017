use strict;
use warnings;

use Test::More;

require_ok('roboter');

my $rob1  = roboter -> new('rob1');
can_ok ('roboter','new');

isa_ok($rob1, 'roboter');

my @methoden = ('arm_li_hoch',
    'arm_li_runter',
    'arm_re_hoch',
    'arm_re_runter',
    'hand_li_auf',
    'hand_li_zu',
    'hand_re_auf',
    'hand_re_zu',
    'pos_arm_li',
    'pos_arm_re',
    'pos_hand_li',
	'pos_hand_re');

can_ok('roboter',@methoden);

is($rob1->arm_li_hoch(), 'oben', '');
is($rob1->arm_li_runter(), 'unten', '');
is($rob1->arm_re_hoch(), 'oben', '');
is($rob1->arm_re_runter(), 'unten', '');
is($rob1->hand_li_auf(), 'offen', '');
is($rob1->hand_li_zu(), 'geschlossen', '');
is($rob1->hand_li_auf(), 'offen', '');
is($rob1->hand_li_zu(), 'geschlossen', '');


done_testing();
