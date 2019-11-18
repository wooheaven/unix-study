```{bash}
$ sudo cp /etc/default/grub /etc/default/grub.backup
$ sudo vi /etc/default/grub
...
#GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
GRUB_CMDLINE_LINUX_DEFAULT="i8042.kbdreset=1 quiet splash"
...
$ sudo update-grub
$ sudo reboot
```
