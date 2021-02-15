# install
```{bash}
$ sudo apt-get install openssh-server
```

# enable user to PasswordAuthentication
```
$ sudo vi /etc/ssh/sshd_config
$ grep ^PasswordAuthentication /etc/ssh/sshd_config
PasswordAuthentication yes

$ sudo service ssh restart
$ sudo service ssh status
● ssh.service - OpenBSD Secure Shell server
   Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
   Active: active (running) since 수 2018-01-24 11:06:04 KST; 43min ago
 Main PID: 3354 (sshd)
   CGroup: /system.slice/ssh.service
           └─3354 /usr/sbin/sshd -D

 1월 24 11:06:04 test systemd[1]: Starting OpenBSD Secure Shell server...
 1월 24 11:06:04 test sshd[3354]: Server listening on 0.0.0.0 port 22.
 1월 24 11:06:04 test sshd[3354]: Server listening on :: port 22.
 1월 24 11:06:04 test systemd[1]: Started OpenBSD Secure Shell server.
```
