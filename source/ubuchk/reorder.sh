#!/usr/bin/perl

#------------------------------------------------------------------------------
# Project Name      - PerlProjects/source/ubuchk/reorder.sh
# Started On        - Fri 16 Oct 00:53:36 BST 2020
# Last Change       - Fri 16 Oct 00:54:49 BST 2020
# Author E-Mail     - terminalforlife@yahoo.com
# Author GitHub     - https://github.com/terminalforlife
#------------------------------------------------------------------------------
# Just a developer script, kept just in-case this needs to be done again. I
# write it out to save me a ton of time changing from the old formatting to the
# new one, with each glob pattern being expanded, tidily.
#
# Chances are, you won't need to execute this. It makes no actual changes.
#------------------------------------------------------------------------------

use strict;
use warnings;
use autodie;
use TFL 'Err';
use File::Glob;

open(my $FH, '<', 'ubuchk-rkdb');
my @OriginalData = <$FH>;
close($FH);

my $Initial;
my $Found = 'False';
foreach my $Line (@OriginalData){
	chomp($Line);
	if ($Line =~ '^:'){
		$Found = 'True';
		$Initial = $Line
	}elsif ($Found eq 'True'){
		$Found = 'False';
		print($Initial . "\n");
		print($_ . "\n") foreach sort({$a gt $b} glob($Line));
		print("\n")
	}
}
