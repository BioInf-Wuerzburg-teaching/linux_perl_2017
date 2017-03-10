use warnings;
use strict;
use Test::More;

use_ok('robot::schnell');
my $fast_bob=new_ok('robot::schnell'=>['petra']);

can_ok('robot::schnell','move');

done_testing();
