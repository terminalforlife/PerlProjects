# Introduction

Full-featured, portable, and easy-to-use command-line downloader for the fantastic collection of over 120,000 wallpapers, spanning several categories and resolutions, stored over at Wallpaperscraft.

# Installation Instructions

Installation can be done with [Cito](https://github.com/terminalforlife/Extra/blob/master/source/cito). Your best bet, however, is to install via WCDL's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/wcdl/wcdl-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so wcdl-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/wcdl/wcdl-installer' && sudo \sh wcdl-installer; rm wcdl-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO wcdl-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/wcdl/wcdl-installer' && sudo \sh wcdl-installer; rm wcdl-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Removing WCDL

If you've used a Debian package to install WCDL, refer to your package manager. However, if you've used the installer, then you can run the following to delete the files it creates:

```
sudo rm -v /usr/share/man/man1/wcdl.1.gz /usr/share/bash-completion/completions/wcdl /usr/bin/wcdl
```

If you don't have sudo(8), you'll have to acquire root privileges by other means.

# Disclaimer

WCDL is a gratis open-source project neither endorsed by nor affiliated with Wallpaperscraft, Eastwood, or associated entities. All of the images downloaded using WCDL belong to their respective owners.
