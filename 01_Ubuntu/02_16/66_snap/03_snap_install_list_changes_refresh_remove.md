# snap is a package manager which isolate package with each others.
```{bash}
sudo snap install pycharm-community --classic
sudo snap list
sudo snap changes
sudo snap refresh pycharm-community
sudo snap remove pycharm-community
```

# real log
```
ubuntu@ubuntu:~$ sudo snap install pycharm-community --classic
2018-03-06T15:14:08+09:00 INFO Waiting for restart...
pycharm-community 2017.3.3 from 'jetbrains' installed

ubuntu@ubuntu:~$ sudo snap list
[sudo] password for ubuntu:
Name               Version    Rev   Developer  Notes
core               16-2.31.1  4110  canonical  core
pycharm-community  2017.3.3   43    jetbrains  classic

ubuntu@ubuntu:~$ sudo snap changes
ID   Status  Spawn                 Ready                 Summary
2    Done    2018-03-06T06:06:38Z  2018-03-06T06:27:54Z  Install "pycharm-community" snap
3    Done    2018-03-06T06:06:38Z  2018-03-06T06:06:47Z  Initialize device

ubuntu@ubuntu:~$ sudo snap refresh pycharm-community
snap "pycharm-community" has no updates available

ubuntu@ubuntu:~$ tree /snap/ -d -L 3
/snap/
├── bin
├── core
│   ├── 4110
│   │   ├── bin
│   │   ├── boot
│   │   ├── dev
│   │   ├── etc
│   │   ├── home
│   │   ├── lib
│   │   ├── lib64
│   │   ├── media
│   │   ├── meta
│   │   ├── mnt
│   │   ├── opt
│   │   ├── proc
│   │   ├── root
│   │   ├── run
│   │   ├── sbin
│   │   ├── snap
│   │   ├── srv
│   │   ├── sys
│   │   ├── tmp
│   │   ├── usr
│   │   ├── var
│   │   └── writable
│   └── current -> 4110
└── pycharm-community
    ├── 43
    │   ├── bin
    │   ├── help
    │   ├── helpers
    │   ├── index
    │   ├── jre64
    │   ├── lib
    │   ├── license
    │   ├── meta
    │   ├── plugins
    │   ├── snap
    │   └── usr
    └── current -> 43

40 directories

ubuntu@ubuntu:~$ sudo snap remove pycharm-community
pycharm-community removed

ubuntu@ubuntu:~$ tree /snap/ -d -L 3
/snap/
├── bin
└── core
    ├── 4110
    │   ├── bin
    │   ├── boot
    │   ├── dev
    │   ├── etc
    │   ├── home
    │   ├── lib
    │   ├── lib64
    │   ├── media
    │   ├── meta
    │   ├── mnt
    │   ├── opt
    │   ├── proc
    │   ├── root
    │   ├── run
    │   ├── sbin
    │   ├── snap
    │   ├── srv
    │   ├── sys
    │   ├── tmp
    │   ├── usr
    │   ├── var
    │   └── writable
    └── current -> 4110

26 directories

ubuntu@ubuntu:~$ sudo snap changes
ID   Status  Spawn                 Ready                 Summary
2    Done    2018-03-06T06:06:38Z  2018-03-06T06:27:54Z  Install "pycharm-community" snap
3    Done    2018-03-06T06:06:38Z  2018-03-06T06:06:47Z  Initialize device
4    Done    2018-03-06T06:32:05Z  2018-03-06T06:32:06Z  Remove "pycharm-community" snap

ubuntu@ubuntu:~$ sudo snap list
Name  Version    Rev   Developer  Notes
core  16-2.31.1  4110  canonical  core
```
