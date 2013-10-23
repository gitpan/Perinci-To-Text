package Perinci::To::PackageBase::I18N::en;
use base 'Perinci::To::PackageBase::I18N';

use Locale::Maketext::Lexicon::Gettext;
our %Lexicon = %{ Locale::Maketext::Lexicon::Gettext->parse(<DATA>) };

our $VERSION = '0.26'; # VERSION

#use Data::Dump; dd \%Lexicon;

1;
# ABSTRACT: English translation for Perinci::To::PackageBase

=pod

=encoding utf-8

=head1 NAME

Perinci::To::PackageBase::I18N::en - English translation for Perinci::To::PackageBase

=head1 HOMEPAGE

Please visit the project's homepage at
L<https://metacpan.org/release/Perinci-To-Text>.

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
msgstr "Function"

msgid  "Functions"
msgstr "Functions"

msgid  "General functions"
msgstr "General functions"

msgid  "Functions related to '%1'"
msgstr "Functions related to '%1'"

msgid  "Variable"
msgstr "Variable"

msgid  "Variables"
msgstr "Variables"

msgid  "General variables"
msgstr "General variables"

msgid  "Variables related to '%1'"
msgstr "Variables related to '%1'"

msgid  "Method"
msgstr "Method"

msgid  "Methods"
msgstr "Methods"

msgid  "General methods"
msgstr "General methods"

msgid  "Methods related to '%1'"
msgstr "Methods related to '%1'"

msgid  "Attribute"
msgstr "Attribute"

msgid  "Attributes"
msgstr "Attributes"

msgid  "General attributes"
msgstr "General attributes"

msgid  "Attributes related to '%1'"
msgstr "Attributes related to '%1'"

msgid  "Subpackages"
msgstr "Subpackages"

msgid  "Name"
msgstr "Name"

msgid  "Summary"
msgstr "Summary"

msgid  "Version"
msgstr "Version"

msgid  "Description"
msgstr "Description"

msgid  "Examples"
msgstr "Examples"

msgid  "See Also"
msgstr "See Also"

msgid  "Links"
msgstr "Links"

msgid  "Tags"
msgstr "Tags"

msgid  "Categories"
msgstr "Categories"

msgid  "Category"
msgstr "Category"

msgid  "This package does not have functions"
msgstr "This package does not have functions"

msgid  "This package does not have variables"
msgstr "This package does not have variables"

msgid  "This class does not add any method of its own"
msgstr "This class does not add any method of its own"

msgid  "This class does not add any attribute of its own"
msgstr "This class does not add any attribute of its own"

msgid  "Methods from superclass '%1'"
msgstr "Methods from superclass '%1'"

msgid  "Attributes from superclass '%1'"
msgstr "Attributes from superclass '%1'"

