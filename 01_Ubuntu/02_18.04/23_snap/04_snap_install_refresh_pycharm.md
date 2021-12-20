# snap install pycharm 
```{bash}
sudo snap install pycharm-community --classic
sudo snap list
```

# snap refresh pycharm
```{bash}
sudo snap list
sudo snap find pycharm-community
# for pycharm-community only
$ sudo snap refresh pycharm-community --classic
# for all packages
$ sudo snap refresh --list 
sudo snap list
```

# sanp install pycharm real log
```{bash}
$ sudo snap install pycharm-community --classic
2018-03-06T15:14:08+09:00 INFO Waiting for restart...
pycharm-community 2017.3.3 from 'jetbrains' installed

$ sudo snap list
Name               Version    Rev   Developer  Notes
core               16-2.31.1  4110  canonical  core
pycharm-community  2017.3.3   43    jetbrains  classic
```

# snap refresh pycharm real log
```{bash}
$ sudo snap list
Name               Version    Rev   Tracking  Developer  Notes
anbox-installer    1          17    stable    morphis    classic
core               16-2.32.5  4486  stable    canonical  core
pycharm-community  2018.1.1   58    stable    jetbrains  classic

$ sudo snap find pycharm-community
Name               Version   Developer  Notes    Summary
pycharm-community  2018.1.2  jetbrains  classic  Python IDE for Professional Developers

$ sudo snap refresh pycharm-community --classic
pycharm-community 2018.1.2 from 'jetbrains' refreshed

$ sudo snap list
Name               Version    Rev   Tracking  Developer  Notes
anbox-installer    1          17    stable    morphis    classic
core               16-2.32.5  4486  stable    canonical  core
pycharm-community  2018.1.2   60    stable    jetbrains  classic
```
