use strict;
use warnings;
use Test::More tests=>9;

require_ok('robot');

my$bob  = robot -> new('bob');

my$name = $bob->name();


is($name,'bob','nametest');
is($name,'bob','nametest_2');

my$sex = $bob->sex();
is($sex,'Apache','Gendertest');


can_ok('robot','move_rechts');
can_ok('robot','move_links');
can_ok('robot','move_runter');
can_ok('robot','hochlaufen');
can_ok('robot','runterlaufen');
can_ok('robot','Welt_Zerstoeren');
can_ok('robot','Bier_trinken');
