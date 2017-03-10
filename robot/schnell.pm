package robot::schnell;

use warnings;
use strict;

use base('roboter');

sub move
{
    my $self = shift;

    
    $self->SUPER::move(@_);
   return  $self->SUPER::move(@_);
   
}
1;
