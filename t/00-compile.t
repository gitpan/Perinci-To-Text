use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::Compile 2.030

use Test::More  tests => 10 + ($ENV{AUTHOR_TESTING} ? 1 : 0);



my @module_files = (
    'Perinci/To/PackageBase.pm',
    'Perinci/To/PackageBase/I18N.pm',
    'Perinci/To/PackageBase/I18N/en.pm',
    'Perinci/To/PackageBase/I18N/fr.pm',
    'Perinci/To/PackageBase/I18N/id.pm',
    'Perinci/To/Text.pm',
    'Perinci/To/Text/I18N.pm',
    'Perinci/To/Text/I18N/en.pm',
    'Perinci/To/Text/I18N/fr.pm',
    'Perinci/To/Text/I18N/id.pm'
);



# no fake home requested

use IPC::Open3;
use IO::Handle;

my @warnings;
for my $lib (@module_files)
{
    # see L<perlfaq8/How can I capture STDERR from an external command?>
    my $stdin = '';     # converted to a gensym by open3
    my $stderr = IO::Handle->new;

    my $pid = open3($stdin, '>&STDERR', $stderr, qq{$^X -Mblib -e"require q[$lib]"});
    binmode $stderr, ':crlf' if $^O; # eq 'MSWin32';
    waitpid($pid, 0);
    is($? >> 8, 0, "$lib loaded ok");

    if (my @_warnings = <$stderr>)
    {
        warn @_warnings;
        push @warnings, @_warnings;
    }
}



is(scalar(@warnings), 0, 'no warnings found') if $ENV{AUTHOR_TESTING};


