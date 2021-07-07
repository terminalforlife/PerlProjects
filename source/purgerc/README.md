# Introduction

To be written...

# Installation Instructions

Installation can be done with [Cito](https://github.com/terminalforlife/Extra/blob/master/source/cito). Your best bet, however, is to install via PurgeRC's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/purgerc/purgerc-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so purgerc-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/purgerc/purgerc-installer' && sudo \sh purgerc-installer; rm purgerc-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO purgerc-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/purgerc/purgerc-installer' && sudo \sh purgerc-installer; rm purgerc-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Removing PurgeRC

If you've used the installer, then you can run the following to delete the file(s) it creates:

```
sudo rm -v /usr/bin/purgerc
```

If you don't have sudo(8), you'll have to acquire root privileges by other means.
