use strict;
use warnings;
package robot;


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

sub links_hoch
{
    my$robot=$_[0];
    $robot->{links_arm}='hoch';
}

sub links_pos
{
    my$robot=$_[0];
    return $robot->{links_arm};
}


sub rechts_pos
{
    my$robot=$_[0];
    return $robot->{rechts_arm};
}

sub links_runter
{
    my$robot=$_[0];
    $robot->{links_arm}='unten';
}
sub rechts_hoch
{
    my$robot=$_[0];
    $robot->{rechts_arm}='hoch';
}
sub rechts_runter
{
    my$robot=$_[0];
    $robot->{links_arm}='unten';
}

sub schritt_rechts
{
 my$robot=$_[0];
 $robot->{pos}[0]=$robot->{pos}[0]+1;
}


sub schritt_links
{
 my$robot=$_[0];
 $robot->{pos}[0]=$robot->{pos}[0]-1;
}
sub schritt_vor
{
 my$robot=$_[0];
 $robot->{pos}[1]=$robot->{pos}[1]+1;
}
sub schritt_hinter
{
 my$robot=$_[0];
 $robot->{pos}[1]=$robot->{pos}[1]-1;
}

sub ping
{
    my$robot=$_[0];
    my $pingX=$robot->{pos}[0];
    my $pingY=$robot->{pos}[1];
    my @coord=($pingX,$pingY);
    return @coord;
}


sub name
{
    my$robot=$_[0];
    my$robname=$robot->{name};
    return $robname;
}


1;

