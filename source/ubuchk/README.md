# Introduction

UbuChk -- a vast upgrade to its old predecessor -- is an administrative tool to determine various aspects of the system health, with a focus on security. Whether it's checking CPU temperatures, PATH executables, disk space, security settings for APT, over 70 rootkits, potentially unwanted packages, or questionable kernel parameters, UbuChk is looking out for you.

Thanks to UbuChk being written in Perl, performance is a huge leap forward. This tool offers the potential additional portability, despite targeting Ubuntu users, allowing the user to roll the dice, forcing UbuChk to run as though in a supported Ubuntu installation of Linux.

More care has been given to the user's experience, particularly to those whom are perhaps not so experienced with Linux. By default, for any of the 130+ given alerts, text briefly recommending or suggesting an action or value is displayed to the user; this can be disabled, however. UbuChk also comes with a database, storing various `queries`, which are essentially tidbits of information the user can read to better understand why they were alerted, what they can do, and/or if it's worth doing anything at all. Ultimately, however, it's up the user.

The core concept of UbuChk is as it always has been: to inform the user, but _not_ to actually _do_ anything. UbuChk will _not_ delete critical files, mess with system settings, or do anything else of concern which can be hard to track, as you may find with other system health utilities; all of this is **entirely** left to the user's discretion.

Want to [see UbuChk in action](https://youtu.be/CZ4Kn0gtHaM) right now?

Alerts are each assigned an Alert ID consisting of a 4-digit integer, which can easily be used to either query UbuChk itself (see: `ubuchk -h`), or perhaps seek help elsewhere, making the ID an easy reference point.

The future of UbuChk looks bright, with development ongoing, and plenty of room for further expansion.

UbuChk has been developed for and used in Ubuntu 16.04 LTS and Ubuntu 18.04 LTS. Distributions based on regular Ubuntu (that one with GNOME 3), such as Linux Mint, Linux Lite, Peppermint OS, and Zorin OS, all should all be capable of running UbuChk, although some features may not work as intended.

The _ubuchk(8)_ manual page offers plenty of further reading, including definitions for each of the 49 user configuration keys.

Thank you for your interest and time.

# Cito Installation Instructions

You'll find Cito at [Extra/source/cito](https://github.com/terminalforlife/Extra/blob/master/source/cito), but I'll assume you already have it, version 2020-02-06 or newer. Enter these commands into a terminal, with root access (using `sudo`, as in the below commands), to install via Cito.

```
sudo mkdir -p --mode=755 /usr/share/ubuchk
sudo cito -M 644 -O 0 -G 0 -T /usr/share/man/man8/ubuchk.8.gz -r terminalforlife PerlProjects master source/ubuchk/ubuchk.8.gz
sudo cito -M 644 -O 0 -G 0 -T /usr/share/ubuchk/database -r terminalforlife PerlProjects master source/ubuchk/database
sudo cito -r terminalforlife PerlProjects master source/ubuchk/{ubuchk,config}
```

If you're not sure what UbuChk is, check out [this](https://youtu.be/CZ4Kn0gtHaM) video, over on YouTube.

# Dependencies

  * [libtfl-perl](https://github.com/terminalforlife/PerlProjects/blob/master/source/TFL.pm) (>= 2020-02-20)
  * libfilesys-diskspace-perl (>= 0.05-16)
  * libnumber-bytes-human-perl (>= 0.09-1)
  * libterm-readkey-perl (>= 2.33-1build1)
  * libtext-wrapi18n-perl (>= 0.06-7.1)
  * perl (>= 5.22.1-9)

If you're on an Ubuntu or similar system, you can use `sudo apt-get install -f` to get all of the remaining dependencies sorted, but **only** after the TFL module is installed, which can be done with the below Cito command.

```
sudo cito -r terminalforlife PerlProjects master source/TFL.pm
```

# Want to Take Part?

Whether you wish to contribute code, add to the database, or report bugs and other issues, your support here would be appreciated.
