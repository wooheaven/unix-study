# add repository on CLI
```
$ sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds// xenial main'
```

# remove repository on CLI
```
$ sudo apt-add-repository --remove 'deb https://dl.winehq.org/wine-builds// xenial main'
$ sudo rm /etc/apt/sources.list.d/nvidia-docker.list
$ sudo rm /etc/apt/sources.list.d/nvidia-docker.list.save
```

# change repository on GUI
![1](1.png)  
![2](2.png)  
![3](3.png)  
![4](4.png)  
![5](5.png)  

# check repository on CLI
```
$ egrep -v "^#" /etc/apt/sources.list | egrep -v "^$"
deb http://mirror.kakao.com/ubuntu/ xenial main restricted
deb http://mirror.kakao.com/ubuntu/ xenial-updates main restricted
deb http://mirror.kakao.com/ubuntu/ xenial universe
deb http://mirror.kakao.com/ubuntu/ xenial-updates universe
deb http://mirror.kakao.com/ubuntu/ xenial multiverse
deb http://mirror.kakao.com/ubuntu/ xenial-updates multiverse
deb http://mirror.kakao.com/ubuntu/ xenial-backports main restricted universe multiverse
deb http://mirror.kakao.com/ubuntu/ xenial-security main restricted
deb http://mirror.kakao.com/ubuntu/ xenial-security universe
deb http://mirror.kakao.com/ubuntu/ xenial-security multiverse
deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable
```
