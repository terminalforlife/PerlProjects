**MASTER** - _Hopefully stable branch._\
**DEV** - _Development Branch (latest changes)_

# Introduction

While redshift(1) is a fantastic tool for protecting the user's eyes, it has always lacked a very useful feature, which Redshifter offers: the ability to easily increment and decrement the current color temperature.

Redshifter is intended to be executed from keyboard shortcuts.

As an added bonus, Redshifter will also save the current value, allowing the user to restore from their last session's temperature value; excellent if you don't want to be blinded at night when you log in to your OS.

While the primarily functionality is to increment and decrement, the user can also specify a set value or reset to the standard 6500K temperature value. These features don't offer anything new, but it is a bit simpler than with redshift(1).

# Installation Instructions

Install the very latest version via Redshifter's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/redshifter/redshifter-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so redshifter-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/redshifter/redshifter-installer' && sudo \sh redshifter-installer; rm redshifter-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO redshifter-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/redshifter/redshifter-installer' && sudo \sh redshifter-installer; rm redshifter-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Uninstalling Redshifter

If you've used the installer, then you can run the following to delete the files it creates:

```
sudo rm -v /usr/bin/redshifter /usr/share/man/man1/redshifter.1.gz /usr/share/bash-completion/completions/redshifter
```

If you don't have sudo(8), you'll have to acquire root privileges by other means.

# Dependencies

The only dependencies are of course Redshift itself and Perl.

  * perl (>= 5.22.1-9)
  * redshift (>= 1.11)

If you're on an Ubuntu or similar system, you can use `sudo apt-get install -f` to get all of the remaining missing dependencies sorted, but **only** IF and AFTER you install the Debian package.

# Want to Take Part?

Whether you wish to contribute code, add to the databases, or report bugs and other issues, your support here would be appreciated.
