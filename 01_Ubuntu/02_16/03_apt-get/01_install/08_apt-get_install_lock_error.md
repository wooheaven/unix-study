```{bash}
$ sudo apt-get install -y --allow-downgrades firefox=45.0.2+build1-0ubuntu1
E: Could not get lock /var/lib/dpkg/lock - open (11: Resource temporarily unavailable)
E: Unable to lock the administration directory (/var/lib/dpkg/), is another process using it?
```
```{bash}
# wait utill apt-get is finished
```
```{bash}
$ sudo rm -rf /var/lib/dpkg/lock 
$ sudo apt-get autoclean && sudo apt-get clear cache
$ sudo reboot
```
