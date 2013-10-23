use utf8;

package Perinci::To::PackageBase::I18N::fr;
use base 'Perinci::To::PackageBase::I18N';

use Locale::Maketext::Lexicon::Gettext;
our %Lexicon = %{ Locale::Maketext::Lexicon::Gettext->parse(<DATA>) };

our $VERSION = '0.26'; # VERSION

#use Data::Dump; dd \%Lexicon;

1;
# ABSTRACT: French translation for Perinci::To::PackageBase

=pod

=encoding utf-8

=head1 NAME

Perinci::To::PackageBase::I18N::fr - French translation for Perinci::To::PackageBase

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
msgstr "Fonction"

msgid  "Functions"
msgstr "Fonctions"

msgid  "General functions"
msgstr "Fonctions générales"

msgid  "Functions related to '%1'"
msgstr "Fonctions liées à '%1'"

msgid  "Variable"
msgstr "Variable"

msgid  "Variables"
msgstr "Variables"

msgid  "General variables"
msgstr "Variables générales"

msgid  "Variables related to '%1'"
msgstr "Variables liées à '%1'"

msgid  "Method"
msgstr "Méthode"

msgid  "Methods"
msgstr "Méthodes"

msgid  "General methods"
msgstr "Méthodes générales"

msgid  "Methods related to '%1'"
msgstr "Méthodes liées à '%1'"

msgid  "Attribute"
msgstr "Attribut"

msgid  "Attributes"
msgstr "Attributs"

msgid  "General attributes"
msgstr "Attributs généraux"

msgid  "Attributes related to '%1'"
msgstr "Attributs liés à '%1'"

msgid  "Subpackages"
msgstr "Sous-paquets"

msgid  "Name"
msgstr "Nom"

msgid  "Version"
msgstr "Version"

msgid  "Summary"
msgstr "Sommaire"

msgid  "Description"
msgstr "Description"

msgid  "Examples"
msgstr "Examples"

msgid  "See Also"
msgstr "Voir aussi"

msgid  "Links"
msgstr "Liens"

msgid  "Tags"
msgstr "Ferrets"

msgid  "Categories"
msgstr "Catégories"

msgid  "Category"
msgstr "Catégorie"

msgid  "This package does not have functions"
msgstr "Ce paquet n'a pas de fonctions"

msgid  "This package does not have variables"
msgstr "Ce paquet n'a pas de variables"

msgid  "This class does not add any method of its own"
msgstr "Cette classe n'ajoute aucune méthode de sa propre"

msgid  "This class does not add any attribute of its own"
msgstr "Cette classe n'ajoute aucune attribut de sa propre"

msgid  "Methods from superclass '%1'"
msgstr "Méthodes de la superclasse '%1'"

msgid  "Attributes from superclass '%1'"
msgstr "Attributs de la superclasse '%1'"
