**MASTER** - _Hopefully stable branch._\
**DEV** - _Development Branch (latest changes)_

# APT History

With useful filtering features and charming, yet simple and configurable output, you can use APT History to enhance your APT package log-viewing needs.

* Video: [New APT History Project for Debian/Ubuntu SysAdmins](https://www.youtube.com/watch?v=NRKhxaL0kGQ)
* Video: [Handy Updates to New APT History SysAdmin Tool](https://www.youtube.com/watch?v=bV-Ts8OE2tE)

There may well be more, but for those, you can head over to the YouTube channel, [Learn Linux](https://www.youtube.com/c/learnlinux).

It's possible to filter by package name, with or without the package's target architecture.

![Screenshot_1](screenshots/Screenshot_2021-01-13_15:19:27.jpg)

You can filter by user name or ID. Using head(1) so you can see the command.

![Screenshot_2](screenshots/Screenshot_2021-01-13_15:20:23.jpg)

You can string filters together, as you would expect, in order to really narrow down the listing.

![Screenshot_3](screenshots/Screenshot_2021-01-13_15:21:14.jpg)

Here's a brief overview by way of its usage output, as of 2021-01-11:

```
Usage: apt-history [OPTS]

  -h, --help               - Display this help information.
  -v, --version            - Output the version datestamp.
  --no-color-status        - Don't show packages not installed in red.
  -A, --action [TYPE]      - Filter action by TYPE. See below.
  -C, --no-color           - Disable ANSII color escape sequences.
  -D, --display [STYLE]    - Display packages in STYLE. See below.
  -H, --history [FILE]     - Use an alternative 'history.log' file.
  -U, --user-id [UID]      - Filter the logged results by UID.
  -c, --command            - Also show the actual command executed.
  -p, --package [PKG]      - Show results affecting only PKG.
  -r, --reverse            - Display history in reverse; oldest first.
  -u, --user [USER]        - Filter the logged results by USER.

  Available package listing STYLEs are 'OneLine' and 'Wrapped'.
  Available TYPEs are 'Install', 'Purge', 'Remove', and 'Upgrade'.

  If color is enabled, packages in red are no longer installed.
```

APT History also supports useful BASH completion and comes with a man page.

# Installation Instructions

Installation can be done with [Cito](https://github.com/terminalforlife/Extra/blob/master/source/cito), but it'll be a pain if you wish to include the man page and BASH completion support.

  * Install via [APT History's DEB package](https://github.com/terminalforlife/DEB-Packages/tree/master/apt-history) for Debian- and Ubuntu-based systems.
  * Install via APT History's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/apt-history/apt-history-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so apt-history-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/apt-history/apt-history-installer' && sudo \sh apt-history-installer; rm apt-history-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO apt-history-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/apt-history/apt-history-installer' && sudo \sh apt-history-installer; rm apt-history-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Dependencies

* libterm-readkey-perl (>= 2.33-1build1)
* libtext-wrapi18n-perl (>= 0.06-7.1)
* perl (>= 5.22.1-9)

If you're on an Ubuntu or similar system, you can use `sudo apt-get install -f` to get all of the remaining missing dependencies sorted, but **only** IF and AFTER you install the Debian package.

# Want to Take Part?

Whether you wish to contribute code or report bugs and other issues, your support here would be appreciated.
