package Array;

use strict;
use warnings;
use base qw(Object);

sub new {
    my $pkg = shift;
    my @args = @_;
    return bless \@args, $pkg;
}

sub each {
    my ($self, $sub) = @_;
    for my $i (0 .. scalar(@$self)-1) {
        $sub->($self->[$i], $i);
    }
    return $self;
}

sub pop {
    my ($self) = @_;
    return pop @$self;
}

sub push {
    my ($self, $value) = @_;
    push @$self, $value;
    return $self;
}

sub shift {
    my ($self) = @_;
    return shift @$self;
}

sub unshift {
    my ($self, $value) = @_;
    unshift @$self, $value;
    return $self;
}

sub sort {
    my ($self, $sub) = @_;
    my @tmp = sort {
        $sub->($a, $b)
    } @$self;
    return Array->new(@tmp);
}

1;
