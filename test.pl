use strict;
use warnings;
use Test::More tests =>4;
use robot;

require_ok('robot');
my $bot= robot->new('bot');
isa_ok($bot, 'robot');
my @methods=('name', 'links_hoch', 'rechts_hoch', 'links_pos', 'rechts_pos', 'links_runter', 'rechts_hoch','rechts_runter', 'schritt_rechts', 'schritt_links', 'schritt_vor', 'schritt_hinter', 'ping');

can_ok('robot', @methods);

my $name= $bot->name();
is($name,'bot', 'name');
