package Perinci::To::Text;

use 5.010001;
use Log::Any '$log';
use Moo;

extends 'Perinci::To::PackageBase';
with    'SHARYANTO::Role::Doc::Section::AddTextLines';

our $VERSION = '0.27'; # VERSION

sub BUILD {
    my ($self, $args) = @_;
}

sub gen_doc_section_summary {
    my ($self) = @_;

    #my $meta = $self->meta;
    my $dres = $self->{_doc_res};

    $self->SUPER::gen_doc_section_summary;

    my $name_summary = join(
        "",
        $dres->{name} // "",
        ($dres->{name} && $dres->{summary} ? ' - ' : ''),
        $dres->{summary} // ""
    );

    $self->add_doc_lines(uc($self->loc("Name")), "");

    $self->inc_doc_indent;
    $self->add_doc_lines($name_summary);
    $self->dec_doc_indent;
}

sub gen_doc_section_version {
    my ($self) = @_;

    my $meta = $self->meta;
    #my $dres = $self->{_doc_res};

    $self->add_doc_lines("", uc($self->loc("Version")), "");

    $self->inc_doc_indent;
    $self->add_doc_lines($meta->{entity_v} // '?');
    $self->dec_doc_indent;
}

sub gen_doc_section_description {
    my ($self) = @_;

    my $dres = $self->{_doc_res};

    $self->SUPER::gen_doc_section_description;
    return unless $dres->{description};

    $self->add_doc_lines("", uc($self->loc("Description")), "");

    $self->inc_doc_indent;
    $self->add_doc_lines($dres->{description});
    $self->dec_doc_indent;
}

sub _gen_func_doc {
    my $self = shift;
    my $o = Perinci::Sub::To::Text->new(@_);
    $o->gen_doc;
    $o->doc_lines;
}

sub gen_doc_section_functions {
    require Perinci::Sub::To::Text;

    my ($self) = @_;

    my $dres = $self->{_doc_res};

    $self->add_doc_lines("", uc($self->loc("Functions")), "");
    $self->SUPER::gen_doc_section_functions;
    for my $furi (sort keys %{ $dres->{functions} }) {
        for (@{ $dres->{functions}{$furi} }) {
            chomp;
            $self->add_doc_lines({wrap=>0}, $_);
        }
        $self->add_doc_lines('');
    }
}

1;
# ABSTRACT: Generate text documentation for a package from Rinci metadata

__END__

=pod

=encoding utf-8

=head1 NAME

Perinci::To::Text - Generate text documentation for a package from Rinci metadata

=head1 VERSION

version 0.27

=head1 SYNOPSIS

 use Perinci::To::POD;
 my $doc = Perinci::To::Text->new(
     name=>'Foo::Bar', meta => {...}, child_metas=>{...});
 say $doc->gen_doc;

You can also try the L<peri-pkg-doc> script (included in the L<Perinci::To::POD>
distribution) with the C<--format text> option:

 % peri-pkg-doc --format text /Some/Module/

To generate documentation for a single function, see L<Perinci::Sub::To::Text>
or the provided command-line script L<peri-func-doc>.

To generate a usage-like help message for a single function, you can try the
L<peri-func-usage> from the L<Perinci::CmdLine> distribution.

=for Pod::Coverage .+

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Perinci-To-Text>.

=head1 SOURCE

Source repository is at L<https://github.com/sharyanto/perl-Perinci-To-Text>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website
http://rt.cpan.org/Public/Dist/Display.html?Name=Perinci-To-Text

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
