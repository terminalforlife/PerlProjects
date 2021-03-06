# Introduction

To be written...

# Installation Instructions

Installation can be done with [Cito](https://github.com/terminalforlife/Extra/blob/master/source/cito). Your best bet, however, is to install via Previewer's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/previewer/previewer-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so previewer-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/previewer/previewer-installer' && sudo \sh previewer-installer; rm previewer-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO previewer-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/previewer/previewer-installer' && sudo \sh previewer-installer; rm previewer-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Removing Previewer

If you've used the installer, then you can run the following to delete the files it creates:

```
sudo rm -v /usr/share/man/man1/previewer.1.gz /usr/share/bash-completion/completions/previewer /usr/bin/previewer
```

If you don't have sudo(8), you'll have to acquire root privileges by other means.
