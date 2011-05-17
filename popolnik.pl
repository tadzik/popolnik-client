use Modern::Perl;
use IPC::Run 'run';
unless (scalar @ARGV) { die "Usage: popolnik.pl <module>\n" };

my @command = ('perl6', 'justtap', $ARGV[0]);

my $out;

my $ret = run \@command, undef, \$out;
say $ret;
say $out;
