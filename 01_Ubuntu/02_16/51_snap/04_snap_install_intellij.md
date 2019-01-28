# snap install intellij on ubuntu16
```{bash}
sudo snap list
sudo snap find intellij-idea-community
sudo snap install intellij-idea-community --classic --edge
sudo snap list
```

# real log
```{bash}
$ sudo snap list
Name               Version    Rev   Tracking  Developer  Notes
anbox-installer    1          17    stable    morphis    classic
core               16-2.32.8  4650  stable    canonical  core
pycharm-community  2018.1.3   62    stable    jetbrains  classic

$ sudo snap find intellij-idea-community
Name                     Version   Developer  Notes    Summary
intellij-idea-community  2018.1.4  jetbrains  classic  Capable & Ergonomic Java IDE

$ sudo snap install intellij-idea-community --classic --edge
intellij-idea-community (edge) 2018.2-EAP from 'jetbrains' installed

$ sudo snap list
Name                     Version     Rev   Tracking  Developer  Notes
anbox-installer          1           17    stable    morphis    classic
core                     16-2.32.8   4650  stable    canonical  core
intellij-idea-community  2018.2-EAP  52    edge      jetbrains  classic
pycharm-community        2018.1.3    62    stable    jetbrains  classic
```
