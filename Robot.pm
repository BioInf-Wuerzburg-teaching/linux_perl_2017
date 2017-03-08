package Robot;
use strict;
use warnings;

sub new
{
    my $name=$_[1]; # da bei [0] die Klasse Robot steht
    my $robot={ rechts_a => 'unten',
		links_a => 'unten',
		name => $name,
		pos=>[7,25]};
    bless $robot,"Robot";
    return $robot;
    
}

sub links_hoch
{
    my $robot=$_[0];
    $robot->{links_a}='hoch';
}

sub links_runter
{
    my $robot=$_[0];
    $robot->{links_a}='runter';
}

sub links_pos_a
{
    my $robot=$_[0];
    return $robot->{links_a};
}

sub rechts_hoch
{
    my $robot=$_[0];
    $robot->{rechts_a}='hoch';
    return $robot->rechts_pos_a;

}

sub rechts_runter
{
    my $robot=$_[0];
    $robot->{rechts_a}='runter';
}


sub rechts_pos_a
{
    my $robot=$_[0];
    return $robot->{rechts_a};
}

sub move_right
{
    my $robot=$_[0];
    $robot->{pos}->[0]=$robot->{pos}->[0]+1;
}

sub move_left
{
    my $robot=$_[0];
    $robot->{pos}->[0]=$robot->{pos}->[0]-1;
}

sub move_back
{
    my $robot=$_[0];
    $robot->{pos}->[1]=$robot->{pos}->[1]+1;
}

sub move_forward
{
    my $robot=$_[0];
    $robot->{pos}->[1]=$robot->{pos}->[1]-1;
}

sub name
{
    my $robot=$_[0];
    $robot->{name}='bob';
}


1;
