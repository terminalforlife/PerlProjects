#!/usr/bin/env perl
#cito M:644 O:0 G:0 T:/usr/share/perl5/APTHistory.pm
#------------------------------------------------------------------------------
# Project Name      - PerlProjects/source/apt-history/APTHistory.pm
# Started On        - Mon 18 Jan 02:48:06 GMT 2021
# Last Change       - Mon 18 Jan 03:22:39 GMT 2021
# Author E-Mail     - terminalforlife@yahoo.com
# Author GitHub     - https://github.com/terminalforlife
#------------------------------------------------------------------------------

package APTHistory;

use v5.22.1;
use strict;
use warnings;
use autodie;

my $CurVer = '2021-01-18';

sub new {
	my $Class = $_[0];
	my $Self = {
		'history' => \&history,
		'packages' => \&packages,
		'version' => \&version
	};

	bless($Self, $Class);

	return($Self)
}

sub version {
	return("$CurVer\n")
}

# I could get something like this done via the APT perl module, but that's yet
# another dependency, so I thought I'd just go the pure-Perl route.
sub packages { # Usage: packages(FILE)
	-f $_[1] or die("File '$_[1]' not found");
	-r $_[1] or die("File '$_[1]' unreadable");

	my (@InstalledPKGs, $InstalledPKG, $InstalledArch, $PKGStatus);
	if (open(my $FH, '<', $_[1])) {
		while (<$FH>) {
			chomp();

			if (/^Package:/) {
				$InstalledPKG = (split(' '))[1]
			} elsif (/^Status:/) {
				$PKGStatus = $_ =~ s/^Status: //r
			} elsif (/^Architecture:/) {
				$InstalledArch = (split(' '))[1];
				$InstalledPKG = "$InstalledPKG:$InstalledArch";

				if ($PKGStatus eq 'install ok installed') {
					push(@InstalledPKGs, $InstalledPKG)
				}
			}
		}

		close($FH);
	}

	return(@InstalledPKGs)
}

sub history { # Usage: history(FILE)
	-f $_[1] or die("File '$_[1]' not found");
	-r $_[1] or die("File '$_[1]' unreadable");

	my (
		%History, $Date, $Time, $Command, $ReqBy,
		$ReqByUID, $Action, $ReqByUser, $Packages
	);

	if (open(my $FH, '<', $_[1])) {
		while (<$FH>) {
			chomp();

			if (/^Start-Date:/) {
				($Date, $Time) = (split(' '))[1..2]
			} elsif (/^Commandline:/) {
				$Command = (m{(?:$& )(.*)})[0]
			} elsif (/^Requested-By:/) {
				my $ReqBy = (m{(?:$&)(.*)})[0];
				($ReqByUser, $ReqByUID) = (split(' ', $ReqBy))[0..1];
			} elsif (/^(Install|Purge|Remove|Upgrade):/) {
				($Action, $Packages) = (m{(^$&)(.*)})[0..1];

				# We're finished gathering data, so populate hash, now.
				$History{"${Date}_$Time"} = {
					'Date' => $Date,
					'Time' => $Time,
					'Command' => $Command,
					'ReqByUser' => $ReqByUser,
					'ReqByUID' => $ReqByUID =~ tr/()//dr,
					'Action' => $Action =~ tr/://dr,
					'Packages' => $Packages
				}
			}
		}

		close($FH)
	}

	return(%History)
}

return(1)
