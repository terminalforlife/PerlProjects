# Introduction

Command-line alternative to the _cheat.sh_ web interface. Cheater offers simpler output with highlighting support, and does away with syntax highlighting. The use of less(1) or more(1) pagination is supported.

# Installation Instructions

Installation can be done with [Cito](https://github.com/terminalforlife/Extra/blob/master/source/cito). Your best bet, however, is to install via Cheater's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/cheater/cheater-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so cheater-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/cheater/cheater-installer' && sudo \sh cheater-installer; rm cheater-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO cheater-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/cheater/cheater-installer' && sudo \sh cheater-installer; rm cheater-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Removing Cheater

If you've used a Debian package to install Cheater, refer to your package manager. However, if you've used the installer, then you can run the following to delete the files it creates:

```
sudo rm -v /usr/share/man/man1/cheater.1.gz /usr/share/bash-completion/completions/cheater /usr/bin/cheater
```

If you don't have sudo(8), you'll have to acquire root privileges by other means.
