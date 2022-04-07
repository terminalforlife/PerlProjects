# Introduction

To be written...

# Installation Instructions

Installation can be done with [Cito](https://github.com/terminalforlife/Extra/blob/master/source/cito). Your best bet, however, is to install via i3 Workspaces's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/i3-workspaces/i3-workspaces-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so i3-workspaces-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/i3-workspaces/i3-workspaces-installer' && sudo \sh i3-workspaces-installer; rm i3-workspaces-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO i3-workspaces-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/i3-workspaces/i3-workspaces-installer' && sudo \sh i3-workspaces-installer; rm i3-workspaces-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Removing i3 Workspaces

If you've used the installer, then you can run the following to delete the files it creates:

```
sudo rm -v /usr/share/man/man1/i3-workspaces.1.gz /usr/share/bash-completion/completions/i3-workspaces /usr/bin/i3-workspaces
```

If you don't have sudo(8), you'll have to acquire root privileges by other means.
