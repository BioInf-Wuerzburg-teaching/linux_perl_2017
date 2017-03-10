use strict;
use warnings;

use Test::More; 

use_ok('roboter');
can_ok('roboter','new');
my$bob = new_ok('roboter'=>['roboter']);

done_testing()
