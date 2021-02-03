#!/usr/bin/env bash

#------------------------------------------------------------------------------
# Project Name      - PerlProjects/source/ubuchk/dev/general.sh
# Started On        - Wed  3 Feb 12:50:20 GMT 2021
# Last Change       - Wed  3 Feb 14:05:03 GMT 2021
# Author E-Mail     - terminalforlife@yahoo.com
# Author GitHub     - https://github.com/terminalforlife
#------------------------------------------------------------------------------
# Interactively test general functionality of ubuchk(8).
#
# Dependencies:
#
#   bash (>= 4.3-14)
#------------------------------------------------------------------------------

CurVer='2021-02-03'
Progrm=${0##*/}

Usage(){
	while read; do
		printf '%s\n' "$REPLY"
	done <<-EOF
		Usage: $Progrm [OPTS]

		  -h, --help               - Display this help information.
		  -v, --version            - Output the version datestamp.
	EOF
}

Err(){
	printf 'ERROR: %s\n' "$2" 1>&2
	[ $1 -gt 0 ] && exit $1
}

BogusAlert=0001
RealAlert=4811
InvalidAlert=0000

UbuChk='../ubuchk'

while [ "$1" ]; do
	case $1 in
		--help|-h|-\?)
			Usage; exit 0 ;;
		--version|-v)
			printf '%s\n' "$CurVer"; exit 0 ;;
		--bogus-alert|-b)
			shift

			if [[ $1 == [0-9][0-9][0-9][0-9] ]]; then
				BogusAlert=$1
			else
				Err 1 "Bogus alert '$1' invalid."
			fi ;;
		--file|-f)
			shift; UbuChk=$1 ;;
		*)
			Err 1 'Incorrect option(s) specified.' ;;
	esac
	shift
done

if ! [ -f "$UbuChk" ] && [ -r "$UbuChk" ]; then
	Err 1 'File missing or unreadable.'
fi

Test(){
	Int=$1; shift
	Desc=$1; shift

	printf '\e[1;33m%d\e[0m: \e[1;36m%s\e[0m\n' $Int "$Desc"
	printf '   \e[2;37m$ %s %s\e[0m\n' "$UbuChk" "$*"

	read -n 1 -sp 'Press any key to continue... '
	printf '\n'

	perl "$UbuChk" "$@"
	Exit=$?

	if [ $Exit -ne 0 ]; then
		printf '\e[1;31mNon-zero exit status of %d.\e[0m\n' $Exit
		let NonZeros++
		return $Exit
	fi
}

#-----------------------------------------------------------------------Test #1

Test 1 'Execute as-is.'

#-----------------------------------------------------------------------Test #2

Test 2 'Display Usage() output.'\
	-h

#-----------------------------------------------------------------------Test #3

Test 3 'Execute as-is, with verbose output via flag.'\
	-V

#-----------------------------------------------------------------------Test #4

Test 4 "Query real $RealAlert alert."\
	-Q $RealAlert

#-----------------------------------------------------------------------Test #5

Test 5 'Display a list of valid alerts.'\
	--list-dbalerts

#-----------------------------------------------------------------------Test #6

Test 6 'Display a list of valid configuration keys.'\
	--list-keys

#-----------------------------------------------------------------------Test #7

Test 7 'Display a list of valid configuration keys.'\
	--list-keys

#-----------------------------------------------------------------------Test #8

Test 8 'Force execution.'\
	--force-run

#-----------------------------------------------------------------------Test #9

Test 9 "Use temporary 'Recommend' key value of 'false'."\
	-k Recommend=false

#---------------------------------------------------------------------------END

if [ ${NonZeros-0} -gt 0 ]; then
	printf '\n\e[1;31mDetected %d non-zero exit(s).\e[0m\n' $NonZeros
fi
