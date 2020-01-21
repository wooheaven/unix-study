# add repository
```
$ sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds// xenial main'
```

# remove repository
```
$ sudo apt-add-repository --remove 'deb https://dl.winehq.org/wine-builds// xenial main'
$ sudo rm /etc/apt/sources.list.d/nvidia-docker.list
$ sudo rm /etc/apt/sources.list.d/nvidia-docker.list.save
```
