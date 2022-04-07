# Introduction

Designed to be easy to use and pleasant to view, LSPKG allows the user to provide a sorted list of all packages which are currently installed, including their short descriptions.

![image](screenshots/Screenshot_2022-04-07_17:15:21.jpg)

Optionally, the user can display the installed size of and according to each package, as well as the ability to filter the output in varying ways, such as by a given priority, listing only essential packages, or per a given REGEX string.

By default, a summary is displayed, revealing the package count and, if sizes are shown, the total size of all installed packages. Furthermore, this size can be converted from human-readable format to only Kilobytes or Kibibytes. Size calculations can be changed to powers of 1000, instead of the default of 1024.

![image](screenshots/Screenshot_2022-04-07_17:21:18.jpg)

Originally written in BASH and using various external tools, LSPKG was on 2022-04-06 rewritten and vastly overhauled in PERL, providing cleaner and more efficient code with various new features and improved aesthetics.

Prior to this rewrite, LSPKG included a simple helper tool written in POSIX shell with very limited functionality, but which is now properly included as LSPKG's core functionality, without the need for a separate executable.

Here's a brief overview by way of its usage output, as of 2022-04-07:

```
Usage: lspkg [OPTS] [REGEX]

  -h, --help               - Display this help information.
  -v, --version            - Output the version datestamp.
  --si                     - Use powers of 1000 instead of 1024.
  -C, --no-color           - Disable ANSI color escape sequences.
  -N, --no-describe        - Omit package short descriptions.
  -S, --no-summary         - Omit package count and total size.
  -a, --show-arch          - Include package architectures.
  -e, --essential          - List only Essential packages.
  -i, --ignore-case        - Match both upper- and lower-case.
  -k, --raw-size           - Show sizes in Kibibytes or Kilobytes.
  -n, --name-only          - Match only the package names.
  -p, --priority TYPE      - Filter packages by a given priority.
  -r, --reverse            - Sort packages in descending order.
  -s, --size               - Include size of each package.
```

LSPKG also supports BASH completion and comes with a man page.

# Installation Instructions

Installation can be done with [Cito](https://github.com/terminalforlife/Extra/blob/master/source/cito). Your best bet, however, is to install via LSPKG's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/lspkg/lspkg-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so lspkg-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/lspkg/lspkg-installer' && sudo \sh lspkg-installer; rm lspkg-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO lspkg-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/lspkg/lspkg-installer' && sudo \sh lspkg-installer; rm lspkg-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Removing LSPKG

If you've used a Debian package to install LSPKG, refer to your package manager. However, if you've used the installer, then you can run the following to delete the files it creates:

```
sudo rm -v /usr/share/man/man1/lspkg.1.gz /usr/share/bash-completion/completions/lspkg /usr/bin/lspkg
```

If you don't have sudo(8), you'll have to acquire root privileges by other means.