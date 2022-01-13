# Introduction

List commits per file in the CWD of a git(1) repository.

This is the PERL version. Originally, Tagged was written in BASH, which can be found in the Extra repository. While this is a useful alternative, particularly for its speed, the focus will be on the BASH version.

# Installation Instructions

Installation can be done with [Cito](https://github.com/terminalforlife/PerlProjects/blob/master/source/cito). Your best bet, however, is to install via Tagged's [installation script](https://github.com/terminalforlife/PerlProjects/blob/master/source/tagged/tagged-installer).

For a quick terminal one-liner, using the aforementioned installation script, you should be able to execute the following, assuming you have sudo(8):

```sh
(cd /tmp; curl -so tagged-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/tagged/tagged-installer' && sudo \sh tagged-installer; rm tagged-installer)
```

If that fails, you probably don't have curl(1), so try wget(1):

```sh
(cd /tmp; wget -qO tagged-installer 'https://raw.githubusercontent.com/terminalforlife/PerlProjects/master/source/tagged/tagged-installer' && sudo \sh tagged-installer; rm tagged-installer)
```

If you don't have sudo(8), just omit it from the command(s) above, and run them as the `root` user, however you gain such privileges.

# Removing Tagged

If you've used the installer, then you can run the following to delete the files it creates:

```
sudo rm -v /usr/share/man/man1/tagged.1.gz /usr/share/bash-completion/completions/tagged /usr/bin/tagged
```

If you don't have sudo(8), you'll have to acquire root privileges by other means.
