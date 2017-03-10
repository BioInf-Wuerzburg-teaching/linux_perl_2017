package roboter;
use strict;
use warnings;

=pod

Das sind die Funktionen, die der Robotor Erdotrumpin braucht um die Weltherrschaft zu erreichen.
Dazu haben wir eine Reihe an Funktionen aufgestellt, die Erdotrumpin dabei helfen.
Er kann sich bewegen, in 4 Richtungen quasi in 2 Dimensionen, zur Verwirrung seiner Feinde kann er sein Geschlecht wechseln sooft er will und möchte.
Zum Schluss kann Erdotrumpin per Dekret feststellen, dass er die Weltherrschaft an sich gerissen hat.
Sehr schön
Alles lupenreine Demokraten

=cut


=pod

Der Robby wird neu gemacht wir brauchten erstmal was zum testen TestyTest

=cut
    

# CONSTRUCTOR der Klasse 'roboter'
#---------------------------------------------------------------------------------------

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


#------

=pod

Die Methode att_change() dient zur gezielten Änderung von Attributen in der Klasse 'roboter'.
Hierzu müssen beim rufen der Methode durch ein Objekt die entsprechenden Parameter übergeben werden:
	-Name des Attributs
	-gewünschte Änderung im Wert
Beispiel:
	$Objekt_der_Klasse_roboter->att_change('arm_li', 'oben');
	
Sollte sich die Datenstruktur des Construktors ändern, müssen alle weiteren Änderungen nur in att_change() gemacht werden.

=cut
    
sub att_change
{
	my($roboter, $att, $att_zustand)=@_;
	
	if($att eq 'arm_li')
		{
			$roboter->{arm_li}=$att_zustand;
		}
	elsif($att eq 'arm_re')
		{
			$roboter->{arm_re}=$att_zustand;
		}
	elsif($att eq 'hand_li')
		{
			$roboter->{hand_li}=$att_zustand;
		}
	elsif($att eq 'hand_re')
		{
			$roboter->{hand_re}=$att_zustand;
		}
	elsif($att eq 'pos')
		{
			$roboter->{pos}=$att_zustand;
		}
	elsif($att eq 'Geschlecht')
		{
			$roboter->{Geschlecht}=$att_zustand;
		}
}

#---------------------------------------------------------------------------------------

=pod

Die Methode arm() ändert gezielt die Zustände der Attribute 'arm_li' und 'arm_re'.
Hierzu müssen beim rufen der Methode durch ein Objekt die entsprechenden Parameter übergeben werden:
	-linker oder rechter Arm ('links' || 'rechts')
	-gewünschte Änderung in der Armposition ('hoch', 'runter')
Beispiel:
	$Objekt_der_Klasse_roboter->arm('links' || 'hoch');
	
Wenn unbekannte Parameter angegeben werden, gibt die Methode entsprechende Fehlermeldungen per print() aus.

=cut


sub arm
{
    my ($roboter,$arm, $richtung) = @_;

    if ($arm eq 'links')
    {
    
		if ($richtung eq 'hoch')
		{ 
			$roboter->att_change('arm_li','oben');
		}
    
		elsif ($richtung eq 'runter')
		{
			$roboter->att_change('arm_li','unten');
		}

		else 
		{
			print "angegebener Parameter für Richtung ist weder 'hoch' noch 'runter'";
		}
    }

 elsif ($arm eq 'rechts')
	{
    
		if ($richtung eq 'hoch')
		{ 
			$roboter->att_change('arm_re','oben');
		}
    
		elsif ($richtung eq 'runter')
		{
			$roboter->att_change('arm_re','unten');
		}

		else
	
		{
			print "angegebener Parameter für Richtung ist weder 'hoch' noch 'runter'";
		}
    }
else
    {
	print "angegebener Parameter für Arm ist weder 'links' noch 'rechts' ";	
    }
}

#------------------------------------------------------------------------------------------------------------
 
=pod

Die Methode hand() ändert gezielt die Zustände der Attribute 'hand_li' und 'hand_re'.
Hierzu müssen beim rufen der Methode durch ein Objekt die entsprechenden Parameter übergeben werden:
	-linke oder rechte Hand ('links' || 'rechts')
	-gewünschte Änderung in der Armposition ('auf' || 'zu')
Beispiel:
	$Objekt_der_Klasse_roboter->arm('links', 'hoch');
	
Wenn unbekannte Parameter angegeben werden, gibt die Methode entsprechende Fehlermeldungen per print() aus.

=cut

sub hand
{
    my ($roboter,$hand, $zustand) = @_;

    if ($hand eq 'links')
    {
    
		if ($zustand eq 'auf')
		{ 
			$roboter->att_change('hand_li','offen');
		}
    
		elsif ($zustand eq 'zu')
		{
			$roboter->att_change('hand_li','geschlossen');
		}

		else
		{
			print "angegebener Parameter für Richtung ist weder 'auf' noch 'zu'";
		}
    }

 elsif ($hand eq 'rechts')
    {
    
		if ($zustand eq 'auf')
		{ 
			$roboter->att_change('hand_re','offen');
		}
    
		elsif ($zustand eq 'zu')
		{
			$roboter->att_change('hand_re','geschlossen');
		}

		else
	
		{
			print "angegebener Parameter für Richtung ist weder 'auf' noch 'zu'";
		}
    }
else
	{
	print "angegebener Parameter für Hand ist weder 'links' noch 'rechts' ";	
	}
}



#ALTER CODE-----------------------------------ALTER CODE------------------------------------ALTER CODE---------------
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

#ALTER CODE-----------------------------------ALTER CODE------------------------------------ALTER CODE---------------

    
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

=pod

Hier zeigt sich der Roboter und gibt die Position auf X und Y Achse aus 
 
 =cut
     
    

sub zeig_dich
{
    my $roboter = $_;
    print 'Erdotrumpin befindet sich auf X: $roboter->{pos}[0] Y: $roboter->{pos}[1]';
 
}

=pod

Der Robby erlangt Weltherrschaft

=cut
    

sub Referendum
{

    print ('Erdotrumpin hat die Weltherrschaft übernommen');
    return 'gedruckt';
}

=pod

zusätzliche parameter, die übergeben werden können sind für rechts : r links: l vor : v und für zurück :z.
Wird kein parameter übergeben wird lediglich die position zurückgegeben.


=cut

sub move 

{
    my$robot = $_[0];
    my$dir=$_[1];
    if($dir eq 'r')
    {
    $robot->{pos}->[0]= $robot->{pos}->[0]+1;
    return $robot->{pos}->[0,1];
    }
    
    elsif($dir eq 'l')
    { 
    $robot->{pos}->[0]= $robot->{pos}->[0]-1;
    return $robot->{pos}->[0,1];
    }
    
    elsif($dir eq 'v')
    {
    $robot->{pos}->[1]= $robot->{pos}->[1]+1;
    return $robot->{pos}->[0,1];
    }
    
    elsif($dir eq 'z')
    {
    $robot->{pos}->[1]= $robot->{pos}->[1]-1;
    return $robot->{pos}->[0,1];
    }
    
    else
    {
	return $robot->{pos}->[0,1];
    }
}
1;

