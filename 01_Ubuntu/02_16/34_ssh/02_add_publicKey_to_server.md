# Check Public Key on Client
```{bash}
ll ~/.ssh
cat ~/.ssh/*.pub
```

# Create Private/Public Key on Client
```{bash}
ssh-keygen -t rsa
```

# Create ~/.ssh folder
```{bash}
ssh localhost 
exit
```

# Add Public Key to Server
```{bash}
vi ~/.ssh/authorized_keys
sudo chmod 600 ~/.ssh/authorized_keys
```

# Configure ssh
```{bash}
vi /etc/ssh/sshd_config
cat /etc/ssh/sshd_config
...
RSAAuthentication       yes
PubkeyAuthentication    yes
AuthorizedKeysFile      .ssh/authorized_keys
PasswordAuthentication  yes
...
```

# Restart ssh
```{bash}
sudo service ssh restart
```

# Login without password
```{bash}
ssh user@host
```
