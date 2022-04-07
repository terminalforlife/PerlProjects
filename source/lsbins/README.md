# Introduction

With LSBins, you can list out all of the PATH (IE: '/bin' and '/usr/bin') executables in an `apt-cache search` style format, but it also allows for searching by name, optionally including the short description of each executable.

# Installation Instructions

Installation can be done with [Cito](https://github.com/terminalforlife/Extra/blob/master/source/cito). Your best bet, however, is to install via LSBins's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/lsbins/lsbins-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so lsbins-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/lsbins/lsbins-installer' && sudo \sh lsbins-installer; rm lsbins-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO lsbins-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/lsbins/lsbins-installer' && sudo \sh lsbins-installer; rm lsbins-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Removing LSBins

If you've used the installer, then you can run the following to delete the files it creates:

```
sudo rm -v /usr/share/man/man1/lsbins.1.gz /usr/share/bash-completion/completions/lsbins /usr/bin/lsbins
```

If you don't have sudo(8), you'll have to acquire root privileges by other means.
