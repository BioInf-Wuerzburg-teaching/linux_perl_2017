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

eine linke Hand (hand_li), die offen (auf) oder zu sein kann

=cut

=item

eine rechte Hand (hand_re), die offfen (auf) oder zu sein kann

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

=pod



=cut
    
sub new
{
    my $name = $_[1];   
    my $roboter = {"arm_li"  => 'unten',
		   "arm_re"  => 'unten',
		   "hand_li" => 'auf',
		   "hand_re" => 'auf',
		   "name"    => $name,
		   "pos"     => [0,0],
		   "Geschlecht" => 'XX'};
    bless $roboter,'roboter';
    return $roboter;
}

sub change
{
    my $robot=shift;
    my $komponente=shift;
    my $seite=shift;
    my $zustand=shift;
    my @attribute=("arm_li","arm_re","hand_li","hand_re");
    if($komponente eq "arm" && $seite eq "links")
    {
	$robot->veraendern($attribute[0],$zustand);
	return($robot->{$attribute[0]})
    }
    elsif($komponente eq "arm" && $seite eq "rechts")
    {
	$robot->veraendern($attribute[1],$zustand);
	return($robot->{$attribute[1]})
    }
    elsif($komponente eq "hand" && $seite eq "links")
    {
	$robot->veraendern($attribute[2],$zustand);
	return($robot->{$attribute[2]})
    }
    elsif($komponente eq "hand" && $seite eq "rechts")
    {
	$robot->veraendern($attribute[3],$zustand);
	return($robot->{$attribute[3]})
    }
    
}

sub veraendern
{
    my $robot=shift;
    my $attribut=shift;
    my $zustand=shift;
    $robot->{$attribut}=$zustand;
    return($robot->{$attribut});
}

sub name
{
    my $robot=shift;
    my $name=shift;
    $robot->{"name"}=$name;
    return($robot->{"name"})
}

1;
