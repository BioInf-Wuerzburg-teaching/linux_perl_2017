package roboter;
use strict;
use warnings;

=pod

Dies ist ein Roboter, der folgende Attribute hat:
- einen linken Arm (arm_li), der oben oder unten sein kann
- einen rechten Arm (arm_re), der oben oder unten sein kann
- eine linke Hand (hand_li), die offen oder zu sein kann
- eine rechte Hand (hand_re), die offfen oder zu sein kann
- einen Namen
- eine Position (pos), die in der Form [X,Y] angegeben wird
- ein Geschlecht, dass entweder weiblich (XX) oder männlich (XY)

=cut

sub new
{
 my $name = $_[1];   
 my $roboter = {arm_li  => 'unten',
	        arm_re  => 'unten',
		hand_li => 'offen',
		hand_re => 'offen',
		name    => $name,
		pos     => [0,0],
		Geschlecht => 'XX'};

    bless $roboter,'roboter';

    return $roboter;
 
}

1;
