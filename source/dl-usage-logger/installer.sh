#!/bin/sh -e

#------------------------------------------------------------------------------
# Project Name      - PerlProjects/source/dl-usage-logger/installer.sh
# Started On        - Tue 15 Mar 03:18:32 GMT 2022
# Last Change       - Tue 15 Mar 03:36:56 GMT 2022
# Author E-Mail     - terminalforlife@yahoo.com
# Author GitHub     - https://github.com/terminalforlife
#------------------------------------------------------------------------------
# Temporary installer script for `dl-usage-logger`. Run from its directory.
#------------------------------------------------------------------------------

GitHub='https://github.com/terminalforlife/PerlProjects/raw/master'
wget -q --show-progress "$GitHub/source/dl-usage-logger/dl-usage-logger"
wget -q --show-progress "$GitHub/source/dl-usage-logger/dlul.service"

install -v -o 0 -g 0 -m 755 dl-usage-logger /usr/local/bin
install -v -o 0 -g 0 -m 644 dlul.service /etc/systemd/system
systemctl enable --now dlul

rm -v dl-usage-logger dlul.service
