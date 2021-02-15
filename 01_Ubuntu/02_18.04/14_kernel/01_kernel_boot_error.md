# error
```
[ 7381.133232] FAT-fs (sda1) : IO charset iso8859-1 not found
You are in emergency mode. After logging in, type "journalctl -xb" to view
System logs, "systemctl reboot" to reboot, "systemctl default" or "exit"
to boot into default mode.
Press Enter for maintenance
(or press Control-D to continue):
root@woo:~# depmod
depmod: WARNING: could not open /lib/modules/5.4.0-52-generic/modules.order: No such file or directory
depmod: WARNING: could not open /lib/modules/5.4.0-52-generic/modules.builtin: No such file or directory
```

# reboot with previous linux-kernel and apt autoremove 
```
woo@woo:~$ sudo apt autoremove
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following packages will be REMOVED:
  linux-hwe-5.4-headers-5.4.0-51 linux-hwe-5.4-headers-5.4.0-52
0 upgraded, 0 newly installed, 2 to remove and 52 not upgraded.
After this operation, 142 MB disk space will be freed.
Do you want to continue? [Y/n] y
(Reading database ... 268486 files and directories currently installed.)
Removing linux-hwe-5.4-headers-5.4.0-51 (5.4.0-51.56~18.04.1) ...
Removing linux-hwe-5.4-headers-5.4.0-52 (5.4.0-52.57~18.04.1) ...
```
