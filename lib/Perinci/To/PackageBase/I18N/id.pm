package Perinci::To::PackageBase::I18N::id;
use base 'Perinci::To::PackageBase::I18N';

use Locale::Maketext::Lexicon::Gettext;
our %Lexicon = %{ Locale::Maketext::Lexicon::Gettext->parse(<DATA>) };

our $VERSION = '0.27'; # VERSION

#use Data::Dump; dd \%Lexicon;

1;
# ABSTRACT: Indonesian translation for Perinci::To::PackageBase

=pod

=encoding utf-8

=head1 NAME

Perinci::To::PackageBase::I18N::id - Indonesian translation for Perinci::To::PackageBase

=head1 VERSION

version 0.27

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

__DATA__
msgid  "Function"
msgstr "Fungsi"

msgid  "Functions"
msgstr "Fungsi"

msgid  "General functions"
msgstr "Fungsi umum"

msgid  "Functions related to '%1'"
msgstr "Fungsi yang berkaitan dengan '%1'"

msgid  "Variable"
msgstr "Variabel"

msgid  "Variables"
msgstr "Variabel"

msgid  "General variables"
msgstr "Variabel umum"

msgid  "Variables related to '%1'"
msgstr "Variabel yang berkaitan dengan '%1'"

msgid  "Method"
msgstr "Metode"

msgid  "Methods"
msgstr "Metode"

msgid  "General methods"
msgstr "Metode umum"

msgid  "Methods related to '%1'"
msgstr "Metode yang berkaitan dengan '%1'"

msgid  "Attribute"
msgstr "Atribut"

msgid  "Attributes"
msgstr "Atribut"

msgid  "General attributes"
msgstr "Atribut umum"

msgid  "Attributes related to '%1'"
msgstr "Atribut yang berkaitan dengan '%1'"

msgid  "Subpackages"
msgstr "Subpaket"

msgid  "Name"
msgstr "Nama"

msgid  "Version"
msgstr "Versi"

msgid  "Summary"
msgstr "Ringkasan"

msgid  "Description"
msgstr "Deskripsi"

msgid  "Examples"
msgstr "Contoh"

msgid  "See Also"
msgstr "Lihat Juga"

msgid  "Links"
msgstr "Tautan"

msgid  "Tags"
msgstr "Tag"

msgid  "Categories"
msgstr "Kategori"

msgid  "Category"
msgstr "Kategori"

msgid  "This package does not have functions"
msgstr "Paket ini tidak memiliki fungsi"

msgid  "This package does not have variables"
msgstr "Paket ini tidak memiliki variabel"

msgid  "This class does not add any method of its own"
msgstr "Kelas ini tidak menambahkan metode apa-apa"

msgid  "This class does not add any attribute of its own"
msgstr "Kelas ini tidak menambahkan atribut apa-apa"

msgid  "Methods from superclass '%1'"
msgstr "Metode dari kelas induk '%1'"

msgid  "Attributes from superclass '%1'"
msgstr "Atribut dari kelas induk '%1'"

