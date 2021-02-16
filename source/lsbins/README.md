# Introduction

With lsbins(1), you can list out all of the PATH (IE: '/bin' and '/usr/bin') executables in an `apt-cache search` style format, but it also allows for searching by name, optionally including the short description of each executable.

# Installation Instructions

There's not yet an installer script for lsbins(1), but you can run the below commands to install the latest version.

```sh
# Main executable.
wget -qO /tmp/lsbins 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/lsbins/lsbins'
sudo chown -v 0:0 /tmp/lsbins; sudo chmod 755 /tmp/lsbins
sudo mv -v /tmp/lsbins /usr/bin/lsbins

# BASH Completion support.
wget -qO /tmp/completions 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/lsbins/completions'
sudo chown -v 0:0 /tmp/completions; sudo chmod 644 /tmp/completions
sudo mv -v /tmp/completions /usr/share/bash-completion/completions/lsbins

# The man(1) page.
wget -qO /tmp/lsbins.1.gz 'https://github.com/terminalforlife/PerlProjects/blob/master/source/lsbins/lsbins.1.gz?raw=true'
sudo chown -v 0:0 /tmp/lsbins.1.gz; sudo chmod 644 /tmp/lsbins.1.gz
sudo mv -v /tmp/lsbins.1.gz /usr/share/man/man1/lsbins.1.gz
```

Uninstallable with:

```sh
sudo rm -v /usr/share/man/man1/lsbins.1.gz /usr/share/bash-completion/completions/lsbins /usr/bin/lsbins
```
