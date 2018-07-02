# userdel -r hadoop
```{bash}
root@BISTel:~# ls -l /home/
total 8
drwxr-xr-x 7 hadoop   hadoop   4096 Jun  5 16:26 hadoop
drwxr-xr-x 6 research research 4096 May 31 14:22 research

root@BISTel:~# userdel -r hadoop
userdel: group hadoop not removed because it has other members.
userdel: hadoop mail spool (/var/mail/hadoop) not found

root@BISTel:~# groups research
research : research adm cdrom sudo dip plugdev lxd lpadmin sambashare hadoop

root@BISTel:~# deluser research hadoop
Removing user `research' from group `hadoop' ...
Done.

root@BISTel:~# groups research
research : research adm cdrom sudo dip plugdev lxd lpadmin sambashare

root@BISTel:~# groupdel hadoop

root@BISTel:~# ls -l /home/
total 4
drwxr-xr-x 6 research research 4096 May 31 14:22 research
```
