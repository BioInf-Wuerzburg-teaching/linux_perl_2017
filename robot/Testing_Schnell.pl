use warnings;
use strict;
use Test::More;

use_ok('robot::schnell');
my $fast_bob=new_ok('robot::schnell'=>['petra']);

can_ok('robot::schnell','move');

my @output = $fast_bob->move();
my @expected = (0,0);
is_deeply(\@output, \@expected, 'MoveTest');

done_testing();
