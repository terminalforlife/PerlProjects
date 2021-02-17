# Introduction

With lsbins(1), you can list out all of the PATH (IE: '/bin' and '/usr/bin') executables in an `apt-cache search` style format, but it also allows for searching by name, optionally including the short description of each executable.

# Installation Instructions

LSBins is installable with cito(8), or with Debian packages found in the DEB-Packages repository. You can also use the 'lsbins-installer' script to have it done for you. Here's a one-liner to have it all done for you:

If you installed lsbins(1) with the provided installer script or cito(8), uninstallation can be done with the below one-liner.

```sh
sudo rm -v /usr/share/man/man1/lsbins.1.gz /usr/share/bash-completion/completions/lsbins /usr/bin/lsbins
```
