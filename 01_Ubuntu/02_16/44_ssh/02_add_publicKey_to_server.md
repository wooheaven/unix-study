# Check Public Key on Client
```{bash}
ll ~/.ssh
cat ~/.ssh/*.pub
```

# Create Private/Public Key on Client
```{bash}
ssh-keygen -t rsa
```

# Create ~/.ssh folder on Server
```{bash}
ssh localhost 
exit
```

# Copy Public Key to Server
```{bash}
ssh-copy-id -i ~/.ssh/id_rsa.pub hadoop@datanode

or

touch ~/.ssh/authorized_keys
echo "ssh-rsa AAA.... root@hostname" >> ~/.ssh/authorized_keys
sudo chmod 600 ~/.ssh/authorized_keys
```

# Configure ssh on Server
```{bash}
vi /etc/ssh/sshd_config
...
RSAAuthentication       yes
PubkeyAuthentication    yes
AuthorizedKeysFile      .ssh/authorized_keys
PasswordAuthentication  yes
...

or

sed -i 's/#AuthorizedKeysFile/AuthorizedKeysFile/' /etc/ssh/sshd_config
grep "^AuthorizedKeysFile" /etc/ssh/sshd_config

sed -i 's/#PasswordAuthentication/PasswordAuthentication/' /etc/ssh/sshd_config
grep "^PasswordAuthentication" /etc/ssh/sshd_config
```

# Restart ssh on Server
```{bash}
sudo service ssh restart
```

# Login without password on Client
```{bash}
ssh user@host
```
