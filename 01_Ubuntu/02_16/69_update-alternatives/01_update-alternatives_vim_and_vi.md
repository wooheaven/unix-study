```bash
$ sudo update-alternatives --install /usr/bin/vim vim /home/linuxbrew/.linuxbrew/bin/vim 31
update-alternatives: using /home/linuxbrew/.linuxbrew/bin/vim to provide /usr/bin/vim (vim) in auto mode

$ sudo update-alternatives --config vim
There are 2 choices for the alternative vim (providing /usr/bin/vim).

  Selection    Path                                Priority   Status
------------------------------------------------------------
* 0            /home/linuxbrew/.linuxbrew/bin/vim   31        auto mode
  1            /home/linuxbrew/.linuxbrew/bin/vim   31        manual mode
  2            /usr/bin/vim.basic                   30        manual mode

Press <enter> to keep the current choice[*], or type selection number:

$ which vim
/usr/bin/vim

$ ll /usr/bin/vim
lrwxrwxrwx 1 root root 21  2월 18 16:55 /usr/bin/vim -> /etc/alternatives/vim*

$ ll /etc/alternatives/vim
lrwxrwxrwx 1 root root 34  4월  3 13:22 /etc/alternatives/vim -> /home/linuxbrew/.linuxbrew/bin/vim*

$ ll /home/linuxbrew/.linuxbrew/bin/vim
lrwxrwxrwx 1 ubuntu ubuntu 30  4월  3 12:22 /home/linuxbrew/.linuxbrew/bin/vim -> ../Cellar/vim/8.1.1050/bin/vim*
```

```bash
$ sudo update-alternatives --install /usr/bin/vi vi /home/linuxbrew/.linuxbrew/bin/vi 31
update-alternatives: using /home/linuxbrew/.linuxbrew/bin/vi to provide /usr/bin/vi (vi) in auto mode

$ sudo update-alternatives --config vi
There are 3 choices for the alternative vi (providing /usr/bin/vi).

  Selection    Path                               Priority   Status
------------------------------------------------------------
* 0            /home/linuxbrew/.linuxbrew/bin/vi   31        auto mode
  1            /home/linuxbrew/.linuxbrew/bin/vi   31        manual mode
  2            /usr/bin/vim.basic                  30        manual mode
  3            /usr/bin/vim.tiny                   10        manual mode

Press <enter> to keep the current choice[*], or type selection number:

$ which vi
/usr/bin/vi

$ ll /usr/bin/vi
lrwxrwxrwx 1 root root 20  2월 18 16:36 /usr/bin/vi -> /etc/alternatives/vi*

$ ll /etc/alternatives/vi
lrwxrwxrwx 1 root root 33  4월  3 13:33 /etc/alternatives/vi -> /home/linuxbrew/.linuxbrew/bin/vi*
```
