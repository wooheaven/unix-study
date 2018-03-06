# snap install anbox
```{bash}
sudo snap install --classic anbox-installer
snap list
anbox-installer
```

# real log
```{bash}
ubuntu@ubuntu:~$ sudo snap install --classic anbox-installer
anbox-installer 1 from 'morphis' installed

ubuntu@ubuntu:~$ snap list
Name             Version    Rev   Developer  Notes
anbox-installer  1          17    morphis    classic
core             16-2.31.1  4110  canonical  core

ubuntu@ubuntu:~$ anbox-installer
Anbox (Android in a Box) - Installer


IMPORTANT: THIS IS ALPHA LEVEL SOFTWARE. EXPECT INSTABILITY AND
           BUGS !!!!!

IMPORTANT: ALSO PLEASE BE AWARE THAT WE DON'T PROVIDE FULL
           CONFINEMENT FOR THE SNAP YET !!!!


PLEASE NOTE: This script will require root access on your system
to install all necessary things. It will prompt you to enter your
password when required.



What do you want to do?

 1. Install Anbox
 2. Uninstall Anbox

Please enter your choice [1-2]:
1


This is the installer for the anbox runtime environment. It will
install certain things on your system to ensure all requirements
are available for anbox to work correctly.

In summary we will install the following things:

 * Add the anbox-support ppa ppa:morphis/anbox-support to the
   host system
 * Install the anbox-modules-dkms deb package from the ppa
   which will add kernel modules for ashmem and binder which are
   required for the Android container to work.
 * Configure binder and ashmem kernel modules to be loaded
   automatically on boot.
 * Install the anbox-common package from the ppa which will
   - Add an upstart job for the current user ubuntu which will
     start the anbox runtime on login.
   - Add a X11 session configuration file to allow the system
     application launcher (Unity7, Gnome Shell, ..) to find
     available Android applications.

Please type 'I AGREE' followed by pressing ENTER to continue
or type anything else to abort:
```
