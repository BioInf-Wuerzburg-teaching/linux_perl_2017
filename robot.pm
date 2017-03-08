use strict;
use warnings;
package robot;

#----------------------------------------------------------------------------CLASS ROBOT
sub new
{
    my$name=$_[1];

    my$robot={rechts_arm=>'unten',
	      links_arm=>'unten',
	      name=>$name,
	      pos=>[0,0]

	      };
    bless($robot, 'robot');
    return $robot;
}

#----------------------------------------------------------------------------CLASS ROBOT END

#setze links_arm auf 'hoch'
sub links_hoch 
{
    my$robot=$_[0];
    $robot->{links_arm}='hoch';
}



#gib position von links_arm
sub links_pos
{
    my$robot=$_[0];
    return $robot->{links_arm};
}

#gib position von rechts_arm
sub rechts_pos
{
    my$robot=$_[0];
    return $robot->{rechts_arm};
}

#setze links_arm auf 'unten'
sub links_runter
{
    my$robot=$_[0];
    $robot->{links_arm}='unten';
}


#setze rechts_arm auf 'hoch'
sub rechts_hoch
{
    my$robot=$_[0];
    $robot->{rechts_arm}='hoch';
}

#setze rechts_arm auf 'unten'
sub rechts_runter
{
    my$robot=$_[0];
    $robot->{links_arm}='unten';
}

#Bewege pos um x+1
sub schritt_rechts
{
 my$robot=$_[0];
 $robot->{pos}[0]=$robot->{pos}[0]+1;
}

#Bewege pos um x-1
sub schritt_links
{
 my$robot=$_[0];
 $robot->{pos}[0]=$robot->{pos}[0]-1;
}


#Bewege pos um y+1
sub schritt_vor
{
 my$robot=$_[0];
 $robot->{pos}[1]=$robot->{pos}[1]+1;
}

#Bewege pos um y-1
sub schritt_hinter
{
 my$robot=$_[0];
 $robot->{pos}[1]=$robot->{pos}[1]-1;
}
#gib x und y koordinaten zurück
sub ping
{
    my$robot=$_[0];
    my $pingX=$robot->{pos}[0];
    my $pingY=$robot->{pos}[1];
    my @coord=($pingX,$pingY);
    return @coord;
}

#gib objektname zurück

sub name
{
    my$robot=$_[0];
    my$robname=$robot->{name};
    return $robname;
}


1;

