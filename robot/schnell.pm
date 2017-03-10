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

sub new
{
    my $class = shift;
    my$self =$class->SUPER::new(@_);
    $self->{lampe}='an';
    return $self;
}

1;
