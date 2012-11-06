package Perinci::ToUtil;

use 5.010;
use strict;
use warnings;

our $VERSION = '0.18'; # VERSION

# generate human-readable short description of schema, this will be
# handled in the future by Sah itself (using the human compiler).

sub sah2human_short {
    require Data::Sah;
    require List::MoreUtils;

    my ($s) = @_;
    if ($s->[0] eq 'any') {
        my @alts    = map {Data::Sah::normalize_schema($_)}
            @{$s->[1]{of} // []};
        my @types   = map {$_->[0]} @alts;
        @types      = sort List::MoreUtils::uniq(@types);
        return join("|", @types) || 'any';
    } else {
        return $s->[0];
    }
}

1;
# ABSTRACT: Temporary utility module

__END__
=pod

=head1 NAME

Perinci::ToUtil - Temporary utility module

=head1 VERSION

version 0.18

=head1 FUNCTIONS

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

