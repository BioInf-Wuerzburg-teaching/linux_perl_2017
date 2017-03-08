use strict;
use warnings;
use Robot;

my $willi=Robot::new('willi');
# durch bless-Befehl wird willi als Roboter deklariert

#Robot::(links_hoch($willi); wird zu
$willi->links_hoch();
	
#my $pos=Robot::links_pos($willi); wird zu
my $pos=$willi->links_pos_a;
print "$willi->{name}\n";
print "alter Standort von Willi: $willi->{pos}->[0],$willi->{pos}->[1]\n";
my $bob=Robot->new('Bob');
$bob->links_hoch;
#print "Bob:$bob\n";
#print "Willi:$willi\n";
my $position= $willi->move_right;
print "neuer Standort von Willi: $position,$willi->{pos}->[1]\n";


$willi ->move_right();
#$willi ->move_back();
for(my$i=1;$i<5;$i++)
{
    $willi->move_forward;
}

print "ganz neuer Standort von Willi: $willi->{pos}[0],$willi->{pos}[1]\n";

my @robots;
for(my$i=1;$i<=15;$i++)
{
    push@robots,Robot->new($i);
}

foreach my$soldier(@robots)
{
    $soldier->move_right;
}
