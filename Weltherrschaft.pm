package Weltherrschaft;
use strict;
use warnings;


=pod
Das sind die Funktionen die der Robotor Erdotrumpin braucht um die Weltherrschaft zu erreichen.
Dazu haben wir eine Reihe an Funktionen aufgestellt, die Erdotrumpin dabei helfen.
Er kann sich bewegen in 4 Richtungen quais in 2 Dimensionen, zur Verwirrung seiner Feinde kann er sein Geschlecht wechseln sooft er will und möchte.
Zum Schluss kann Erdotrumpin per Dekret feststellen, dass er die Weltherrschaft an sich gerissen hat.
Sehr schön
Alles lupenreine Demokraten
=cut


=pod
Der Robby wird neu gemacht wir brauchten erstmal was zum testen TestyTest
=cut

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
    bless $roboter,'Weltherrschaft';
    return $roboter;
 
}

=pod

Der Robby bewegt sich nach links

=cut

  

   
sub bewegen_l
{
    my $robot=$_[0];
    $robot->{pos}->[0]= $robot->{pos}->[0]-1;
    return $robot->{pos}->[0];
}

=pod

Der Robby bewegt sich nach rechts

=cut

sub bewegen_r
{
    my $robot=$_[0];
    $robot->{pos}->[0]= $robot->{pos}->[0]+1;
    return $robot->{pos}->[0];
}

=pod

Der Robby bewegt sich nach vorne

=cut

sub bewegen_vor
{
    my $robot=$_[0];
    $robot->{pos}->[1]= $robot->{pos}->[1]+1;
    return $robot->{pos}->[1];
}

=pod

Der Robby bewegt sich nach hinten

=cut

sub bewegen_zur
{
    my $robot=$_[0];
    $robot->{pos}->[1]= $robot->{pos}->[1]-1;
    return $robot->{pos}->[1];
}

=pod

Der Robby ändert seine Geschlecht_INNEN

=cut

sub Geschlechtsumwandlung
{
    
    my $Gender = $_;
    if($Gender -> {Geschlecht} eq "XX")
    {
	
	$Gender -> {Geschlecht}='XY';
    }
	  
    elsif($Gender -> {Geschlecht} eq "XY")
    {
	
	$Gender -> {Geschlecht}='XX';
    }

    
}

sub zeig_dich
{
}

=pod

Der Robby erlangt Weltherrschaft

=cut
    

sub Referendum
{

    print ('Erdotrumpin hat die Weltherrschaft übernommen');
    return 'gedruckt';
}


sub move

{
   # if($_[1] eq 'r')
	
}



1;

