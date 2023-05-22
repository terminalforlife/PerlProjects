### Description

A surprisingly useful tool for undoing APT installation operations. APT Undo Install primarily works by parsing APT's 'history.log' files, allowing you to undo the last one or more of these installation operations, even by date and time.This is especially useful to those often exploring new packages.

### Requirements

Written for Debian- and Ubuntu-based distributions of Linux.

Depends:

* Perl (>= 5.22)
* apt-pkg for Perl (e.g., 'libapt-pkg-perl')
* apt
* bsdmainutils
* less

### Files

The installer provides the following:

* '/usr/local/bin/apt-undo-install'
* '/usr/share/bash-completion/completions/apt-undo-install'

### Contributions

The best way to help is to let me know of any bugs or oversights.

If you wish to contribute any code, try to keep to the existing programming style. Avoid reaching outside of the language whenever possible or reasonable, and keep things consistent and presentable. If you're contributing a new file, such as a helper or wrapper, try to stick to similar dependencies (where reasonable) and please keep the style of the output the same.

If submitting any documentation, try to ensure the English is correct and presentable.
