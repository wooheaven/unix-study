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

# run level
| run level | Description |
| --- | --- |
| 0 | Power off |
| 1 | Rescue mode, Single user mode |
| 2 | Multiuser mode |
| 3 | multi-user.target console, Full Multi user mode |
| 4 | user defined |
| 5 | graphical.target |
| 6 | reboot |
