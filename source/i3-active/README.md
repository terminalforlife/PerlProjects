# Introduction

Output information for the active window in i3-wm or i3-gaps. This is a much leaner alternative to the use of xdotool(1), but specifically for this window manager, and without the potential overhead it might incur.

Importantly, this program _does_ allow the output of _only_ a given value, such as the title, class, or window ID (hexadecimal or decimal), which are commonly used when scripting for this window manager.

# Installation Instructions

Installation can be done with [Cito](https://github.com/terminalforlife/Extra/blob/master/source/cito). Your best bet, however, is to install via i3 Active's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/i3-active/i3-active-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so i3-active-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/i3-active/i3-active-installer' && sudo \sh i3-active-installer; rm i3-active-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO i3-active-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/i3-active/i3-active-installer' && sudo \sh i3-active-installer; rm i3-active-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Removing i3 Active

If you've used a Debian package to install i3 Active, refer to your package manager. However, if you've used the installer, then you can run the following to delete the files it creates:

```
sudo rm -v /usr/share/man/man1/i3-active.1.gz /usr/share/bash-completion/completions/i3-active /usr/bin/i3-active
```

If you don't have sudo(8), you'll have to acquire root privileges by other means.
