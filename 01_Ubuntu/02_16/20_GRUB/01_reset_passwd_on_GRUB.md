# reset password on GRUB
```{bash}
# press 'SHIFT' or 'ESC' for get into GRUB on boot

# press 'e' to edit the commands before booting on [ + Ubuntu ]

# find line with starting like 'linux' and add ' init=/bin/bash' at the end of the line

# press 'CTRL + x' to boot

# remount / for write
mount -o rw,remount /

# root passwd
passwd 

# user passwd
passwd user

reboot -f
```
