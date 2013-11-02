
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Generate text documentation for a package from Rinci metadata",
  "AUTHOR" => "Steven Haryanto <stevenharyanto\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Perinci-To-Text",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Perinci::To::Text",
  "PREREQ_PM" => {
    "Data::Dump::OneLine" => 0,
    "Locale::Maketext::Lexicon" => 0,
    "Locale::Maketext::Lexicon::Gettext" => 0,
    "Log::Any" => 0,
    "Moo" => 0,
    "Perinci::Access" => "0.25",
    "Perinci::Access::Perl" => "0.38",
    "Perinci::Object" => "0.11",
    "Perinci::Sub::To::FuncBase" => "0.28",
    "Perinci::Sub::To::Text" => "0.28",
    "Perinci::ToUtil" => 0,
    "Rinci" => "v1.1.36",
    "SHARYANTO::Role::Doc::Section" => "0.53",
    "SHARYANTO::Role::Doc::Section::AddTextLines" => "0.53",
    "SHARYANTO::Role::I18N" => "0.15",
    "SHARYANTO::Role::I18NRinci" => 0
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Perinci::Access::Perl" => "0.38",
    "Perinci::Examples" => 0,
    "Test::More" => "0.96"
  },
  "VERSION" => "0.27",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Data::Dump::OneLine" => 0,
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Locale::Maketext::Lexicon" => 0,
  "Locale::Maketext::Lexicon::Gettext" => 0,
  "Log::Any" => 0,
  "Moo" => 0,
  "Perinci::Access" => "0.25",
  "Perinci::Access::Perl" => "0.38",
  "Perinci::Examples" => 0,
  "Perinci::Object" => "0.11",
  "Perinci::Sub::To::FuncBase" => "0.28",
  "Perinci::Sub::To::Text" => "0.28",
  "Perinci::ToUtil" => 0,
  "Rinci" => "v1.1.36",
  "SHARYANTO::Role::Doc::Section" => "0.53",
  "SHARYANTO::Role::Doc::Section::AddTextLines" => "0.53",
  "SHARYANTO::Role::I18N" => "0.15",
  "SHARYANTO::Role::I18NRinci" => 0,
  "Test::More" => "0.96"
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



