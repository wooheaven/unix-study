```{bash}
# Step 1 install vnc4server

    ubuntu@ubuntu:~$ sudo apt-get install gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal
    ubuntu@ubuntu:~$ sudo apt-get install vnc4server

# Step 2 configure vnc4server

    ubuntu@ubuntu:~$ sudo apt-get install dconf-editor

    ubuntu@ubuntu:~$ cp xstartup xstartup.bak

    ubuntu@ubuntu:~$ vi xstartup
    #!/bin/sh

    # Uncomment the following two lines for normal desktop:
    unset SESSION_MANAGER
    # exec /etc/X11/xinit/xinitrc

    #[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
    #[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
    #xsetroot -solid grey
    #vncconfig -iconic &
    #x-terminal-emulator -geometry 80x24+10+10 -ls -title "$VNCDESKTOP Desktop" &
    #x-window-manager &
    metacity &
    gnome-settings-daemon &
    gnome-panel &

# Step 3 run vnc4server

    ubuntu@ubuntu:~$ vnc4server
    You will require a password to access your desktops.

    Password: 
    Verify: 

    New 'ubuntu:1 (ubuntu)' desktop is ubuntu:1

    Creating default startup script /home/ubuntu/.vnc/xstartup
    Starting applications specified in /home/ubuntu/.vnc/xstartup
    Log file is /home/ubuntu/.vnc/ubuntu:1.log

    ubuntu@ubuntu:~$ sudo ps -ef | grep vnc
    ubuntu   33844     1  0 10:11 pts/1    00:00:00 Xvnc4 :1 -desktop ubuntu:1 (ubuntu) -auth /home/ubuntu/.Xauthority -geometry 1024x768 -depth 16 -rfbwait 30000 -rfbauth /home/ubuntu/.vnc/passwd -rfbport 5901 -pn -fp /usr/X11R6/lib/X11/fonts/Type1/,/usr/X11R6/lib/X11/fonts/Speedo/,/usr/X11R6/lib/X11/fonts/misc/,/usr/X11R6/lib/X11/fonts/75dpi/,/usr/X11R6/lib/X11/fonts/100dpi/,/usr/share/fonts/X11/misc/,/usr/share/fonts/X11/Type1/,/usr/share/fonts/X11/75dpi/,/usr/share/fonts/X11/100dpi/ -co /etc/X11/rgb
    ubuntu   33850     1  0 10:11 pts/1    00:00:00 vncconfig -iconic
    ubuntu   33932 32920  0 10:11 pts/1    00:00:00 grep --color=auto vnc

    ubuntu@ubuntu:~$ cd /home/ubuntu/.vnc/

    ubuntu@ubuntu:~/.vnc$ cat ubuntu\:1.log

    ubuntu@ubuntu:~/.vnc$ cat ubuntu\:1.pid
    33844

# Step 4 stop vnc4server

    ubuntu@ubuntu:~/.vnc$ vnc4server -kill :1
    Killing Xvnc4 process ID 33844

    ubuntu@ubuntu:~/.vnc$ rm ubuntu\:1.log


# Step 5 restart vnc4server

    ubuntu@ubuntu:~/.vnc$ vnc4server -geometry 1600x1200

    New 'ubuntu:1 (ubuntu)' desktop is ubuntu:1

    Starting applications specified in /home/ubuntu/.vnc/xstartup
    Log file is /home/ubuntu/.vnc/ubuntu:1.log

    ubuntu@ubuntu:~/.vnc$ ll
    total 28
    drwxr-xr-x  2 ubuntu ubuntu 4096 11월  8 10:43 ./
    drwxr-xr-x 29 ubuntu ubuntu 4096 11월  8 10:43 ../
    -rw-------  1 ubuntu ubuntu    8 11월  8 10:11 passwd
    -rw-rw-r--  1 ubuntu ubuntu 2969 11월  8 10:44 ubuntu:1.log
    -rw-rw-r--  1 ubuntu ubuntu    6 11월  8 10:43 ubuntu:1.pid
    -rwxr-xr-x  1 ubuntu ubuntu  441 11월  8 10:42 xstartup*
    -rwxr-xr-x  1 ubuntu ubuntu  361 11월  8 10:39 xstartup.bak*

    ubuntu@ubuntu:~/.vnc$ cat ubuntu\:1.log

    ubuntu@ubuntu:~/.vnc$ cat ubuntu\:1.pid
    34154

    ubuntu@ubuntu:~/.vnc$ sudo netstat -plant
    Active Internet connections (servers and established)
    Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
    tcp        0      0 127.0.1.1:53            0.0.0.0:*               LISTEN      2357/dnsmasq
    tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      1396/sshd
    tcp        0      0 127.0.0.1:631           0.0.0.0:*               LISTEN      32778/cupsd
    tcp        0      0 0.0.0.0:6001            0.0.0.0:*               LISTEN      35352/Xvnc4
    tcp        0      0 192.168.7.178:22        192.168.200.159:53632   ESTABLISHED 32834/sshd: ubuntu
    tcp6       0      0 :::22                   :::*                    LISTEN      1396/sshd
    tcp6       0      0 ::1:631                 :::*                    LISTEN      32778/cupsd
    tcp6       0      0 :::5901                 :::*                    LISTEN      35352/Xvnc4

# Step 6 Keyboard-Mapping Ubuntu 14

    Applications
    -> System Tools
    -> dconf Editor
    -> org gnome desktop wm keybindings
    -> Value which including ['<Super>'] should be replaced as empty []
    -> Value minimize is replaced as empty []
```
