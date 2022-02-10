# Introduction

Configurable developer tool to overview projects' todos.

# Installation Instructions

Installation can be done with [Cito](https://github.com/terminalforlife/Extra/blob/master/source/cito). Your best bet, however, is to install via TuDu's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/tudu/tudu-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so tudu-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/tudu/tudu-installer' && sudo \sh tudu-installer; rm tudu-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO tudu-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/tudu/tudu-installer' && sudo \sh tudu-installer; rm tudu-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Removing TuDu

If you've used the installer, then you can run the following to delete the files it creates:

```
sudo rm -v /usr/share/bash-completion/completions/tudu /usr/share/man/man1/tudu.1.gz /usr/bin/tudu
```

If you don't have sudo(8), you'll have to acquire root privileges by other means.
