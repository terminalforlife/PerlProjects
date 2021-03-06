# Introduction

Lightweight and fairly portable tool to display drive temperatures using the _drivetemp_ driver in modern Linux kernels, via the _hwmon_ class in _SYSFS_.

# Installation Instructions

Installation can be done with [Cito](https://github.com/terminalforlife/Extra/blob/master/source/cito). Your best bet, however, is to install via DTP's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/dtp/dtp-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so dtp-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/dtp/dtp-installer' && sudo \sh dtp-installer; rm dtp-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO dtp-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/dtp/dtp-installer' && sudo \sh dtp-installer; rm dtp-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Removing DTP

If you've used the installer, then you can run the following to delete the files it creates:

```
sudo rm -v /usr/share/bash-completion/completions/dtp /usr/bin/dtp
```

If you don't have sudo(8), you'll have to acquire root privileges by other means.
