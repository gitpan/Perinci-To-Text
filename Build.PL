
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Perinci::Examples" => 0,
    "Test::More" => "0.96"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Generate text documentation from Rinci package metadata",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Perinci-To-Text",
  "dist_version" => "0.15",
  "license" => "perl",
  "module_name" => "Perinci::To::Text",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Data::Dump" => 0,
    "Data::Dump::OneLine" => 0,
    "Data::Sah" => "0.02",
    "List::MoreUtils" => 0,
    "Perinci::Access" => "0.25",
    "Rinci" => "1.1.11",
    "SHARYANTO::Role::Doc::Section" => 0,
    "SHARYANTO::Role::I18N" => "0.15",
    "SHARYANTO::Role::I18NRinci" => 0,
    "perl" => "5.010000"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
