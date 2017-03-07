use strict;
use warnings;
package robot;


sub new
{
    my$name=$_[0];

    my$robot={rechts_arm=>'unten',
	      links_arm=>'unten',
	      name=>$name,
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

1;
