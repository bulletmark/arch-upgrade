### ARCH LINUX UPGRADER

Arch-upgrade is small desktop convenience app which can be placed in
your [Arch Linux](http://www.archlinux.org) launcher/dock. Click on it
to pop up a terminal window to upgrade your system and AUR packages.
Click on the OK button when complete. Before updating, it will check and
present Arch news notices since you last updated and prompt to proceed.

### INSTALLATION

NOTE: Arch users can just install
[_arch-upgrade from the AUR_](https://aur.archlinux.org/packages/arch-upgrade/) and skip to the next section.

    sudo pacman -S zenity wmctrl python-html2text git
    git clone http://github.com/bulletmark/arch-upgrade
    cd arch-upgrade
    sudo make install

### CHOOSE PACKAGE MANAGER AND CONFIGURATION

Then install [Pacaur](http://aur.archlinux.org/packages/pacaur/) from
the AUR.
[Pacaur](http://aur.archlinux.org/packages/pacaur/) is the default
package manager used by _arch-upgrade_ but you can choose another by
copying the system-wide default `/etc/arch-upgrade.conf` file to your
personal `$HOME/.config/arch-upgrade.conf` and editing it to specify an
alternative package manager like
[Yaourt](http://aur.archlinux.org/packages/yaourt/). You can also
specify different options to the package manager.

NOTE: _Arch-upgrade_ now installs system-wide but older versions of
_arch-upgrade_ installed as local user files so to ensure that any old
user configuration is removed type the following as your normal user
(i.e. not sudo/root).

    arch-upgrade-setup clean

You can type this any time so no harm is done running it to make sure.

### REMOVAL

    sudo arch-upgrade-setup uninstall

### UPGRADE

    cd arch-upgrade  # Source dir, as above
    git pull
    sudo make install

### COMMAND LINE

You can also run directly on the command line. In this case it will not
use GUI popups and will only prompt from the command line. Just type:

    arch-upgrade

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
Public License at <http://www.gnu.org/licenses/> for more details.

<!-- vim: se ai syn=markdown: -->
