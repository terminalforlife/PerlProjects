#!/usr/bin/env perl
#cito M:644 O:0 G:0 T:/usr/share/perl5/TFL.pm
#------------------------------------------------------------------------------
# Project Name      - PerlProjects/source/TFL.pm
# Started On        - Mon  6 May 19:29:05 BST 2019
# Last Change       - Sat  1 Feb 01:03:35 GMT 2020
# Author E-Mail     - terminalforlife@yahoo.com
# Author GitHub     - https://github.com/terminalforlife
#------------------------------------------------------------------------------

package TFL;

=encoding utf8

=head1 NAME

TFL -- key features for TFL programs and general Perl scripts.

=head1 DESCRIPTION

The TFL module provides features written for and used by TFL programs
and general Perl scripts.

=head1 AUTHORS

terminalforlife <terminalforlife@yahoo.com>

=cut

require v5.22.1;
use parent 'Exporter';

use strict;
use warnings;
use vars '@EXPORT', '$VERSION';

@EXPORT = (
	'$PROGNAME', '$AUTHOR', '$GITHUB', 'FErr', 'Err', 'KeyVal',
	'DepChk', 'KeyDef', 'UsageCPU', 'UnderLine', 'Boolean', 'YNInput'
);

$VERSION = '2020-02-01';

our ($PROGNAME) = $0 =~ m{(?:.*/)?([^/]*)};
our $AUTHOR = 'Written by terminalforlife <terminalforlife@yahoo.com>';
our $GITHUB = 'https://github.com/terminalforlife';

=head1 VARIABLES

=over 4

=item $TFL::PROGNAME

Contains the name of the current program.

=item $TFL::AUTHOR

Contains the author and E-Mail string for all TFL code.

=item $TFL::GITHUB

Contains the URL for the TFL author's GitHub repositories.

=cut

=back

=head1 FUNCTIONS

=over 4

=item FErr()

Output argument three's error string, with `[0001] ERROR: ' prefixed. Where the number indicates the line number of the error message. If the first argument is a `1', then an `exit(1)' occurs, but if it's a `0', then no exit occurs, as with Err(). The second argument requires `__LINE__' or, in an unlikely case, an integer be otherwise provided.

=cut

sub FErr{
	printf("[L%0.4d] ERROR: %s\n", $_[1], $_[2]);
	exit(1) if $_[0]
}

=item Err()

Output argument two's error string, with `ERROR: ' prefixed. If the first argument is a `1', then an `exit(1)' occurs, but if it's a `0', then the message becomes merely superficial.

=cut

sub Err{
	printf("ERROR: %s\n", $_[1]);
	exit(1) if $_[0]
}

=item KeyVal()

Return a key or value from argument one's `key=value' string. The second argument should be an integer `0' or `1', for whether to return the key (left string) or value (right string).

=cut

sub KeyVal{
	return(@{[split('=', $_[0])]}[$_[1]])
}

=item KeyDef()

Test for the definition of keys in argument one's hash, per the second argument's list. Useful for parsing configuration files.

=cut

sub KeyDef{
	my $Failed = 0;
	foreach my $KeyViable (@{($_[1])}){
		my $Count = 0;

		foreach my $Key (keys(%{$_[0]})){
			if($KeyViable eq $Key){
				$Count++;

				die("Value for '$Key' key not defined.")
					unless defined(${$_[0]}{$Key})
			}
		}

		if($Count == 0){
			die("Key '$KeyViable' not defined");
			$Failed++
		}
	}

	exit(1) if $Failed > 0
}

=item DepChk()

Test for the existence of an executable. If argument one is a basename value, environment variable PATH is checked. If an absolute path is provided, various file tests are performed. Multiple arguments are allowed, even those consisting of both absolute and PATH types.

=cut

sub DepChk{
	my $Passive = 'false';
	if ($_[0] eq ':'){
		$Passive = 'true';
		shift(@_)
	}

	my $DepCount = 0;
	foreach my $CurDep (@_){
		my $Found = 'false';

		if ($CurDep !~ '/'){
			foreach my $CurDir (split(':', $ENV{'PATH'})){
				foreach my $CurFile (glob("$CurDir/*")){
					next unless -f -x $CurFile;

					if ($CurFile =~ "/$CurDep\$"){
						$Found = 'true';
						last
					}
				}
			}
		}else{
			$Found = 'true' if -f -x $CurDep
		}

		if ($Found ne 'true'){
			return(1) if $Passive eq 'true';
			printf(STDERR "ERROR: Dependency '%s' not met.\n", $CurDep);
			exit(1)
		}
	}
}

=item UnderLine()

Pseudo-underline argument two's string with argument one's character.

=cut

sub UnderLine{
	return($_[1] . "\n" . $_[0] x length($_[1]))
}

=item UsageCPU()

Return the CPU usage (determined using `/proc/stat') per the value in argument one, such as `cpu' or `cpuN', where `N' is the number of the core for which to return the usage.

=cut

sub UsageCPU{
	my $StatFile = '/proc/stat';

	exit(1) unless -f -r $StatFile;

	open(my $FH, '<', $StatFile);
	my @StatData = <$FH>;
	close($FH);

	foreach (@StatData){
		chomp(my @Buf = split(' ', $_));
		next if $Buf[0] ne $_[0];

		my $Usage = ($Buf[1] + $Buf[3]) * 100 / ($Buf[1] + $Buf[3] + $Buf[4]);

		return(int($Usage))
	}
}

=item Boolean()

Check the 'true' or 'false' value of the first argument; must be either one.

=cut

sub Boolean{
	Err(1, "Invalid boolean '$_[0]' detected.")
		unless $_[0] =~ '^(true|false)$'
}

=item YNInput()

Ask a simple 'yes' or 'no' question, per the first argument, case-insensitively.

=cut

sub YNInput{
	print("$_[0] [Y/N] ");
	my $Reply = <STDIN>;

	if ($Reply =~ '^([Nn]|[Nn][Oo])$'){
		return(0)
	}elsif (length($Reply) == 0 or $Reply !~ '^([Yy]|[Yy][Ee][Ss])$'){
		return(2)
	}else{
		return(1)
	}
}

=back

=head1 CHANGES

=head2 2020-01-11

Added YNInput().

=head2 2020-01-09

Added Boolean().

=head2 2020-01-02

Removed PKGVersion().

Allowed for the exportation of almost all subroutines.

Renamed Defined() to KeyDef(), and FAIL() to FErr().

=head2 2019-12-14

Removed i3Do(), DepChkPortable(), _ArgChk(), and UpdChk().

Added Err().

=head2 2019-05-16

Added DepChkPortable() and PKGVersion().

=head2 2019-05-12

Added i3Do() and UnderLine().

=head2 2019-05-07

Added KeyVal(), _ArgChk(), and DepChk().

=head2 2019-05-06

TFL module development began.

=cut

return(1)
