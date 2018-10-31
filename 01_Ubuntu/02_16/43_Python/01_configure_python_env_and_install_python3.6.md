# confiure python
```{bash}
$ which python
/usr/bin/python

$ ll /usr/bin/python
lrwxrwxrwx 1 root root 9 Nov 24  2017 /usr/bin/python -> python2.7*

$ ll /usr/bin/python2.7
-rwxr-xr-x 1 root root 3492656 Dec  5  2017 /usr/bin/python2.7*

$ sudo update-alternatives --config python
update-alternatives: error: no alternatives for python

$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
update-alternatives: using /usr/bin/python2.7 to provide /usr/bin/python (python) in auto mode

$ sudo update-alternatives --config python
There is only one alternative in link group python (providing /usr/bin/python): /usr/bin/python2.7
Nothing to configure.

$ ll /usr/bin/python
lrwxrwxrwx 1 root root 24 Oct 31 11:35 /usr/bin/python -> /etc/alternatives/python*

$ ll /etc/alternatives/python 
lrwxrwxrwx 1 root root 18 Oct 31 11:35 /etc/alternatives/python -> /usr/bin/python2.7*

$ python -V
Python 2.7.12
```

# configure python2
```{bash}
$ which python2
/usr/bin/python2

$ ll /usr/bin/python2
lrwxrwxrwx 1 root root 9 Nov 24  2017 /usr/bin/python2 -> python2.7*

$ ll /usr/bin/python2.7
-rwxr-xr-x 1 root root 3492656 Dec  5  2017 /usr/bin/python2.7*

$ sudo update-alternatives --config python2
update-alternatives: error: no alternatives for python2

$ sudo update-alternatives --install /usr/bin/python2 python2 /usr/bin/python2.7 1
update-alternatives: using /usr/bin/python2.7 to provide /usr/bin/python2 (python2) in auto mode

$ sudo update-alternatives --config python2
There is only one alternative in link group python2 (providing /usr/bin/python2): /usr/bin/python2.7
Nothing to configure.

$ ll /usr/bin/python2
lrwxrwxrwx 1 root root 25 Oct 31 11:44 /usr/bin/python2 -> /etc/alternatives/python2*

$ ll /etc/alternatives/python2 
lrwxrwxrwx 1 root root 18 Oct 31 11:44 /etc/alternatives/python2 -> /usr/bin/python2.7*

$ python2 -V
Python 2.7.12
```

# configure python3
```{bash}
$ which python3
/usr/bin/python3

$ ll /usr/bin/python3
lrwxrwxrwx 1 root root 9 Jan 29  2018 /usr/bin/python3 -> python3.5*

$ ll /usr/bin/python3.5
-rwxr-xr-x 2 root root 4464400 Nov 29  2017 /usr/bin/python3.5*

$ sudo update-alternatives --config python3
update-alternatives: error: no alternatives for python3

$ sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
update-alternatives: using /usr/bin/python3.5 to provide /usr/bin/python3 (python3) in auto mode

$ sudo update-alternatives --config python3
There is only one alternative in link group python3 (providing /usr/bin/python3): /usr/bin/python3.5
Nothing to configure.

$ ll /usr/bin/python3
lrwxrwxrwx 1 root root 25 Oct 31 11:47 /usr/bin/python3 -> /etc/alternatives/python3*

$ ll /etc/alternatives/python3 
lrwxrwxrwx 1 root root 18 Oct 31 11:47 /etc/alternatives/python3 -> /usr/bin/python3.5*

$ python3 -V
Python 3.5.2
```

# install python3.6
```{bash}
$ sudo add-apt-repository ppa:jonathonf/python-3.6
$ sudo apt-get update
$ sudo apt-get install python3.6

$ which python3.6
/usr/bin/python3.6

$ ll /usr/bin/python3.6
-rwxr-xr-x 2 root root 4604416 Oct 26 08:03 /usr/bin/python3.6*

$ python3.6 -V
Python 3.6.7
```

# warn python, python2, python3
```{text}
Gnome bug happen if the environment for python, python2, python3 is changed.
So use python3.6 as python3.6 not python and python3.
```

