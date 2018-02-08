# by command temparary
```{bash}
sudo systemctl isolate multi-user.target
sudo systemctl isolate graphical.target
```

# on boot
```{bash}
sudo systemctl enable multi-user.target
sudo systemctl set-default multi-user.target

sudo systemctl enable graphical.target
sudo systemctl set-default graphical.target
```
