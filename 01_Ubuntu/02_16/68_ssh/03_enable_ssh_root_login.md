```{bash}
$ grep "^PermitRootLogin" /etc/ssh/sshd_config
PermitRootLogin prohibit-password

$ sudo sed -i 's/prohibit-password/yes/' /etc/ssh/sshd_config
$ grep "^PermitRootLogin" /etc/ssh/sshd_config
PermitRootLogin yes

$ sudo systemctl restart sshd
```
