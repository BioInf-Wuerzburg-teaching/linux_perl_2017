

use robot;

for(my$i=1;$i<=5;$i++)
{
    push@robots, robot->new($i);
}

foreach $robot(@robots)
{
    $robot -> move_rechts;
}


my$willi=robot::new('willi');
$willi -> linkshoch();
$willi -> rechtshoch();
for(my$i=1;$i<5;$i++)
{    
    $willi -> move_rechts();
}


print"\n";
print "Ich bin ein $willi->{sex}\n";
print "Der linke Arm ist: $willi->{linksa}\n";
print "Der recht Arm ist: $willi->{rechtsa}\n";
print "Der $willi->{sex} befindet sich auf X:$willi->{pos}[0]\n";
print "Der $willi->{sex} befindet sich auf y:$willi->{pos}[1]\n";

$willi -> genderchange();

print "\n";

print "Jetzt bin ich  ein $willi->{sex}\n";
    
