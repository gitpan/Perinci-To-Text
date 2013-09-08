
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Generate text documentation for a package from Rinci metadata",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Perinci-To-Text",
  "dist_version" => "0.23",
  "license" => "perl",
  "module_name" => "Perinci::To::Text",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Data::Dump::OneLine" => 0,
    "Locale::Maketext::Lexicon" => 0,
    "Locale::Maketext::Lexicon::Gettext" => 0,
    "Log::Any" => 0,
    "Moo" => 0,
    "Perinci::Access" => "0.25",
    "Perinci::Access::Perl" => "0.38",
    "Perinci::Object" => "0.11",
    "Perinci::Sub::To::FuncBase" => 0,
    "Perinci::Sub::To::Text" => "0.24",
    "Perinci::ToUtil" => 0,
    "Rinci" => "v1.1.36",
    "SHARYANTO::Role::Doc::Section" => "0.53",
    "SHARYANTO::Role::Doc::Section::AddTextLines" => "0.53",
    "SHARYANTO::Role::I18N" => "0.15",
    "SHARYANTO::Role::I18NRinci" => 0,
    "perl" => "5.010001"
  },
  "script_files" => [],
  "test_requires" => {
    "Capture::Tiny" => 0,
    "Perinci::Examples" => 0,
    "Test::More" => "0.96",
    "blib" => 0
  }
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  my $tr = delete $module_build_args{test_requires};
  my $br = $module_build_args{build_requires};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
