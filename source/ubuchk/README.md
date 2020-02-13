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

  * libfilesys-diskspace-perl (>= 0.05-16)
  * libterm-readkey-perl (>= 2.33-1build1)
  * libtext-wrapi18n-perl (>= 0.06-7.1)
  * [libtfl-perl](https://github.com/terminalforlife/PerlProjects/blob/master/source/TFL.pm) (>= 2020-01-09)
  * perl (>= 5.22.1-9)

If you're on an Ubuntu or similar system, you can use `sudo apt-get install -f` to get all of the remaining dependencies sorted, but **only** after the TFL module is installed, which can be done with the below Cito command.

```
sudo cito -r terminalforlife PerlProjects master source/TFL.pm
```
