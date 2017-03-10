package roboter;
use strict;
use warnings;

=head1 Cooler Roboter

=pod

Dies ist ein Roboter, der folgende Attribute hat:

=cut

=over
   
=item

einen linken Arm (arm_li), der oben oder unten sein kann

=cut

=item
    
einen rechten Arm (arm_re), der oben oder unten sein kann

=cut

=item

eine linke Hand (hand_li), die offen oder zu sein kann

=cut

=item

eine rechte Hand (hand_re), die offfen oder zu sein kann

=cut

=item

einen Namen

=cut

=item

eine Position (pos), die in der Form [X,Y] angegeben wird

=cut

=item

ein Geschlecht, dass entweder weiblich (XX) oder maennlich (XY)

=cut

=back

=cut    

sub new
{
    my $name = $_[1];   
    my $roboter = {"arm_li"  => 'unten',
		   "arm_re"  => 'unten',
		   "hand_li" => 'offen',
		   "hand_re" => 'offen',
		   "name"    => $name,
		   "pos"     => [0,0],
		   "Geschlecht" => 'XX'};
    bless $roboter,'roboter';
    return $roboter;
}

sub arm
{
    my $robot=shift;
    my $arm_seite=shift;
    my $arm_pos=shift;
    if($arm_seite eq "links")
    {
	if($arm_pos eq "oben")
	{
	    $robot->{"arm_li"}="oben";
	    return($robot->{"arm_li"});
	}
    }
}

1;
