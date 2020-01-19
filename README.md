**MASTER** - _Hopefully stable branch._\
**DEV** - _Development Branch (latest changes)_

# What's Available Here?

What follows is a list of programs* for which the source code is stored here, as of 2020-01-17:

  * apt-download-deps - Download all dependencies for one or more Debian packages.
  * apt-undo-install - A Perl solution to undo recent APT installations.
  * clean-locales - Remove non-English localizations.
  * cpufreq - Display the current CPU core frequencies.
  * getip - View your internal and/or external IP address.
  * gitsap - Display an elegant overview of your git repositories.
  * lsbins - A descriptive, searchable overview of PATH executables.
  * previewer - Perl program to pretty-print Linux Mint package reviews.
  * redshifter - Quality-of-life Perl wrapper for redshift.
  * tudu - Configurable developer tool to overview projects' todos.
  * wcdl - Extensive Perl downloader for Wallpaperscraft.

_\* I define a 'program' as not just being some 'quick and dirty' script I knock out then forget about. To me, a 'program' is something I truely care about presenting to people; something I endeavor to be carefully-written and usually maintained, while being mindful of the user's experience. My definition of a program is flexible, but one thing stands out: I give a damn about you and your experience!_

# How to Install TFL.pm (`libtfl-perl`)

_Thanks to issue #1 by @sonick13 for prompting me to type this out for you guys._

One of the dependencies to many of the Perl programs the source for which is within this repository, is a Perl module called `TFL` (`libtfl-perl`); it was created for use by various Perl programs written by me, _terminalforlife_. Below, is a set of instructions to obtain and install this module.

#### If You're **NOT** on a Debian- or Ubuntu-Based Distribution

If you have [Cito](https://github.com/terminalforlife/Extra/blob/master/source/cito) (Debian packages [here](https://github.com/terminalforlife/DEB-Packages/blob/master/cito)), it's an easy solution, but skip this option if you're on Debian or Ubuntu (or distributions based thereon):

```
sudo cito -r terminalforlife PerlProjects master source/TFL.pm
```

#### If You **ARE** on a Debian- or Ubuntu-Based Distribution

You can use one of the many available Debian packages stored in the [DEB-Packages](https://github.com/terminalforlife/DEB-Packages) repository.

#### If Neither Options are Desired

Lastly, if neither of these two options are desired or available to you, you can install it manually, which I _don't_ recommend:

```
wget -O /tmp/TFL.pm.tmp https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/TFL.pm
sudo chown 0:0 /tmp/TFL.pm.tmp; sudo chmod 644 /tmp/TFL.pm.tmp
sudo mv /tmp/TFL.pm.tmp /usr/share/perl5/TFL.pm
```

# Bug/Issue Reporting

If you have any issues or bugs, I strongly recommend reporting it here on GitHub, as it's where I spend most of my time, these days. Failing that, since we're not all obsessed with GitHub, send me an E-Mail over at _terminalforlife@yahoo.com_ (rarely checked, if I'm honest). Lastly, I'm _Learn Linux_ over at [YouTube](https://www.youtube.com/channel/UCfp-lNJy4QkIGnaEE6NtDSg), so feel free to leave a comment over there; I read them _all_.

Be sure to provide as much information as possible, if you're reporting a bug, such as program output, error messages, system information, etc.

Thanks!
