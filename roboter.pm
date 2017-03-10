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

sub arm
{
    my $robot=shift;
    my $arm_seite=shift;
    my $arm_pos=shift;
    if ($arm_seite eq "links")
    {
	$robot->veraendern($arm_pos,"arm_li");
	return($robot->{"arm_li"})
    }
    elsif ($arm_seite eq "rechts")
    {
	$robot->veraendern($arm_pos,"arm_re");
	return($robot->{"arm_re"})
    }
    else
    {
	die;
    }
}

sub veraendern
{
    my $robot=shift;
    my $pos=shift;
    my $attribut=shift;
    $robot->{$attribut}=$pos;
    return($robot->{$attribut});
}

sub hand
{
    my $robot=shift;
    my $arm_seite=shift;
    my $arm_pos=shift;
    if ($arm_seite eq "links")
    {
	$robot->veraendern($arm_pos,"hand_li");
	return($robot->{"hand_li"})
    }
    elsif ($arm_seite eq "rechts")
    {
	$robot->veraendern($arm_pos,"hand_re");
	return($robot->{"hand_re"})
    }
    else
    {
	die;
    }
}

sub name
{
    my $robot=shift;
    my $name=shift;
    $robot->{"name"}=$name;
    return($robot->{"name"})
}

1;
