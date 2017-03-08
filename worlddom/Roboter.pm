package roboter;
use strict;
use warnings;

sub new
{
 my $name = $_[1];   
 my $roboter = {arm_li  => 'unten',
	        arm_re  => 'unten',
		hand_li => 'offen',
		hand_re => 'offen',
		name    => $name,
		pos     => [0,0],
		Geschlecht => ''};
    bless $roboter,'roboter';
    return $roboter;
 
}

sub arm_li_hoch
{
    my $roboter = $_[0];
    $roboter -> {arm_li} = 'oben';
    return $roboter -> pos_arm_li();
}

sub arm_li_runter
{
    my $roboter = $_[0];
    $roboter -> {arm_li} = 'unten';
    return $roboter -> pos_arm_li();
   
}

sub arm_re_hoch
{
    my $roboter = $_[0];
    $roboter -> {arm_re} = 'oben';
    return $roboter -> pos_arm_re();
}

sub arm_re_runter
{
    my $roboter = $_[0];
    $roboter -> {arm_re} = 'unten';
    return $roboter -> pos_arm_re();
}

sub hand_li_auf
{
    my $roboter = $_[0];
    $roboter -> {hand_li} = 'offen';
    return $roboter -> pos_hand_li();
}

sub hand_li_zu
{
    my $roboter = $_[0];
    $roboter -> {hand_li} = 'geschlossen';
    return $roboter -> pos_hand_li();
}


sub hand_re_auf
{
    my $roboter = $_[0];
    $roboter -> {hand_re} = 'offen';
    return $roboter -> pos_hand_re();
}

sub hand_re_zu
{
    my $roboter = $_[0];
    $roboter -> {hand_re} = 'geschlossen';
    return $roboter -> pos_hand_re();
}
