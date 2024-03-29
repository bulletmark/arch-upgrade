### ARCH LINUX UPGRADER
[![AUR](https://img.shields.io/aur/version/arch-upgrade)](https://aur.archlinux.org/packages/arch-upgrade/)

[Arch-upgrade](https://github.com/bulletmark/arch-upgrade) is small
desktop convenience app which can be placed in your
[Arch Linux](https://www.archlinux.org) launcher/dock. Click on it to pop
up a terminal window to upgrade your system and AUR packages. Click on
the OK button when complete. Before updating, it will present a prompt
for new [Arch Linux News](https://news.archlinux32.org/) notices that have
been posted since you last updated. You can also run `arch-upgrade`
directly on the command line, with or without GUI prompts.

The latest version and documentation is available at
https://github.com/bulletmark/arch-upgrade.

### INSTALLATION

NOTE: Arch users can/should just install
[_arch-upgrade from the AUR_](https://aur.archlinux.org/packages/arch-upgrade/) and skip to the next section.

1. Install `curl`, `python-unidecode`, `xmlstarlet`, and `git` packages.

2. If you are going to use the GUI, also install `zenity` and `wmctrl`
packages. You don't need these if you are just going to run
arch-upgrade on the command line, e.g. on a server.

3. Run the following commands:
~~~~
    git clone https://github.com/bulletmark/arch-upgrade
    cd arch-upgrade
    sudo make install (or sudo ./arch-upgrade-setup install)
~~~~

### CHOOSE PACKAGE MANAGER AND CONFIGURATION

[yay](https://aur.archlinux.org/packages/yay/) is the default package
manager initially configured for _arch-upgrade_ but you can easily choose
another by copying the system-wide default `/etc/arch-upgrade.conf` file
to your personal `$HOME/.config/arch-upgrade.conf` and editing it to
specify an alternative package manager like
[pacman](https://www.archlinux.org/pacman/),
[paru](https://github.com/Morganamilo/paru),
[trizen](https://aur.archlinux.org/packages/trizen/), or any other. You
can also specify different options to the package manager.

NOTE: _Arch-upgrade_ now installs system-wide but old versions installed
as local user files so to ensure that any old user configuration is
removed type the following as your normal user (i.e. not sudo/root).

    arch-upgrade-setup clean

You can type this any time so no harm is done running it to make sure.

### UPGRADE

    cd arch-upgrade  # Source dir, as above
    git pull
    sudo make install (or sudo ./arch-upgrade-setup install)

### REMOVAL

    sudo arch-upgrade-setup uninstall

### COMMAND LINE

You can also run directly on the command line. In this case it will not
use GUI popups and will only prompt from the command line. Just type:

    arch-upgrade

Command line options are:

```
Usage: arch-upgrade
Options:
-g (run with GUI prompts)
-d (include development packages in upgrade)
-n (skip fetch and check/report of latest news)
-a (automatically accept latest news)
-m (skip check/report of mirrorlist file update)
-c <conffile> (alternative configuration file)

The configuration file used is the first found of:
~/.config/arch-upgrade.conf /etc/arch-upgrade.conf
```

### LICENSE

Copyright (C) 2014 Mark Blakeney. This program is distributed under the
terms of the GNU General Public License.
This program is free software: you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation, either version 3 of the License, or any later
version.
This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
Public License at <https://www.gnu.org/licenses/> for more details.

<!-- vim: se ai syn=markdown: -->
