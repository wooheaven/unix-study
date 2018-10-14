# userdel -r hadoop
```{bash}
root@ubuntu:~# ls -l /home/
total 8
drwxr-xr-x 7 hadoop   hadoop   4096 Jun  5 16:26 hadoop
drwxr-xr-x 6 spark 	  spark    4096 May 31 14:22 spark

root@ubuntu:~# userdel -r hadoop
userdel: group hadoop not removed because it has other members.
userdel: hadoop mail spool (/var/mail/hadoop) not found

root@ubuntu:~# groups spark
spark : spark adm cdrom sudo dip plugdev lxd lpadmin sambashare hadoop

root@ubuntu:~# deluser spark hadoop
Removing user `spark' from group `hadoop' ...
Done.

root@ubuntu:~# groups spark
spark : spark adm cdrom sudo dip plugdev lxd lpadmin sambashare

root@ubuntu:~# groupdel hadoop

root@ubuntu:~# ls -l /home/
total 4
drwxr-xr-x 6 spark spark 4096 May 31 14:22 spark
```
