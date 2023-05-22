### Description

UbuChk is an administrative tool to perform various system checks.

### Important Note from Author

Aside from general code improvements, I must point out UbuChk hasn't been updated properly in some time. As a result, not everything will be current, particularly some of the security checks.

I've had to put UbuChk to the side. I believe I underestimated the amount of time and work it would take to constantly keep it up-to-date. I'm not yet sure whether I will be staying on an Ubuntu base, which pulls me further away from UbuChk. Despite this, it's thankfully still a very useful tool, especially on a new installation.

### Requirements

Written for Ubuntu-based distributions of Linux.

Depends:

* Perl (>= 5.22)
* filesys-diskspace for Perl (e.g., 'libfilesys-diskspace-perl')
* term-readkey for Perl (e.g., 'libterm-readkey-perl')
* text-wrapi18n for Perl (e.g., 'libtext-wrapi18n-perl')

Recommends:

* POSIX-compliant shell (e.g., DASH)
* coreutils
* Wget | cURL

### Files

The installer provides the following:

* '/usr/local/bin/ubuchk'
* '/usr/local/bin/ubuchk-db'
* '/usr/share/bash-completion/completions/ubuchk'
* '/usr/share/bash-completion/completions/ubuchk-db'
* '/usr/share/man/man8/ubuchk.8.gz'
* '/usr/share/ubuchk'

### Contributions

The best way to help is to let me know of any bugs or oversights.

If you wish to contribute any code, try to keep to the existing programming style. Avoid reaching outside of the language whenever possible or reasonable, and keep things consistent and presentable. If you're contributing a new file, such as a helper or wrapper, try to stick to similar dependencies (where reasonable) and please keep the style of the output the same.

If submitting any documentation, try to ensure the English is correct and presentable.
