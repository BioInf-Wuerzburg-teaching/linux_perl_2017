use strict;
use warnings;


package robot;


sub new
{
    my$name = $_[0];
    
    my$robot = { rechtsa => 'unten',
		 linksa => 'unten',
		 sex  => 'Apache',
		 name => $name,
		 pos => [1,1]},;

    bless $robot, "robot";

     return $robot;
}

sub linkshoch
{
    my$robot = $_[0];
    $robot -> {linksa} = 'hoch';
}

sub rechtshoch
{
    my$robot = $_[0];
    $robot -> {rechtsa} = 'hoch';
}


sub links_pos
{
    my$robot=$_[0];
    return$robot->{links_a};
}



sub move_rechts
{
    my$robot=$_[0];
    $robot->{pos}->[0]=$robot->{pos}[0]+1;
}


sub move_links
{
    my$robot=$_[0];
    $robot->{pos}->[0]=$robot->{pos}[0]-1;
}

sub move_hoch
{
    my$robot=$_[0];
    $robot->{pos}->[0]=$robot->{pos}[1]+1;
}

sub move_runter
{
    my$robot=$_[0];
    $robot->{pos}->[0]=$robot->{pos}[1]-1;
}

sub name
{
   my$robot=$_[0];
   $robot->{name}='bob';
}

sub sex
{
    my$robot=$_[0];
    $robot->{sex}='Apache';
}



sub genderchange
{
    my$robot=$_[0];
    $robot->{sex}='Comanche';
    
}

sub hochlaufen
{
}

sub runterlaufen
{
}

sub Welt_Zerstoeren
{
}

sub Bier_trinken
{
}


1
