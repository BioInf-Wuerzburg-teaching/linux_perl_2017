package Weltherrschaft;
use strict;
use warnings;


sub bewegen_l
{
    my $robot=$_[0];
    $robot->{pos}->[0]= $robot->{pos}->[0]-1;
    return $robot->{pos};
}

sub bewegen_r
{
}
sub bewegen_vor
{
}
sub bewegen_zur
{
}






sub Geschlechtsumwandlung
{
}

sub Referendum
{
}



1;

