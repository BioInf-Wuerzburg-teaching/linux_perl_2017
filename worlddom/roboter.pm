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
		Geschlecht => 'XX'};
    bless $roboter,'roboter';
    return $roboter;
 
}


#---------------------------------------------------------------------------------------

sub arm
{
    my ($roboter,$arm, $richtung) = @_;

    if ($arm eq 'links')
    {
    
	if ($richtung eq 'hoch')
	{ 
	    $roboter -> {arm_li} = 'oben';
	}
    
	elsif ($richtung eq 'runter')
	{
	    $roboter -> {arm_li} = 'unten';
	}

	else ($richtung ne 'hoch'| $richtung ne 'runter') {print "angegebener Parameter für Richtung ist weder 'hoch' noch 'runter'";
	}
    }

 elsif ($arm eq 'rechts')
    {
    
	if ($richtung eq 'hoch')
	{ 
	    $roboter -> {arm_re} = 'oben';
	}
    
	elsif ($richtung eq 'runter')
	{
	    $roboter -> {arm_re} = 'unten';
	}

	else ($richtung ne 'hoch'| $richtung ne 'runter')
	
	{
	    print "angegebener Parameter für Richtung ist weder 'hoch' noch 'runter'";
	}
    }
    else ($arm ne 'links'| $arm ne 'rechts')
    {
	print "angegebener Parameter für Arm ist weder 'links' noch 'rechts' ";	
    }
}

#------------------------------------------------------------------------------------------------------------
  
sub hand
{
    my $roboter,$hand, $zustand = @_;

    if ($hand eq 'links')
    {
    
	if ($zustand eq 'auf')
	{ 
	    $roboter -> {hand_li} = 'offen';
	}
    
	elsif ($zustand eq 'zu')
	{
	    $roboter -> {hand_li} = 'geschlossen';
	}

	else ($zustand ne 'auf'| $zustand ne 'zu') {print "angegebener Parameter für Richtung ist weder 'auf' noch 'zu'";
	}
    }

 elsif ($hand eq 'rechts')
    {
    
	if ($zustand eq 'auf')
	{ 
	    $roboter -> {hand_re} = 'offen';
	}
    
	elsif ($zustand eq 'zu')
	{
	    $roboter -> {hand_re} = 'geschlossen';
	}

	else ($zustand ne 'auf'| $zustand ne 'zu')
	
	{
	    print "angegebener Parameter für Richtung ist weder 'auf' noch 'zu'";
	}
    }
    else ($hand ne 'links'| $hand ne 'rechts')
    {
	print "angegebener Parameter für Hand ist weder 'links' noch 'rechts' ";	
    }
}



1;
    
    





=pod

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

sub pos_arm_re
{
    my $roboter = $_[0];
    return $roboter -> {arm_re};
}

sub pos_arm_li
{
    my $roboter = $_[0];
    return $roboter -> {arm_li};
}

sub pos_hand_re
{
    my $roboter = $_[0];
    return $roboter -> {hand_re};
}

sub pos_hand_li
{
    my $roboter = $_[0];
    return $roboter -> {hand_li};
}
=cut

1;
