# On Ubuntu 16
```{bash}
$ sudo apt-get install gnome-panel vnc4server

$ vnc4server

$ sudo ps -ef | grep vnc

$ vnc4server -kill :1

$ cp ~/.vnc/xstartup ~/.vnc/xstartup.bak

$ vi ~/.vnc/xstartup
#!/bin/sh

# Uncomment the following two lines for normal desktop:
# unset SESSION_MANAGER
# exec /etc/X11/xinit/xinitrc

[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
xsetroot -solid grey
vncconfig -iconic &
x-terminal-emulator -geometry 80x24+10+10 -ls -title "$VNCDESKTOP Desktop" &
x-window-manager &

gnome-panel &
gnome-settings-daemon &
metacity &
nautilus &

$ vnc4server -geometry 1600x1200

$ sudo ps -ef | grep vnc
bistel   12835  3668  0 19:51 pts/2    00:00:00 Xvnc4 :1 -desktop bistel-Lenovo-ideapad-700-15ISK:1 (bistel) -auth /home/bistel/.Xauthority -geometry 1600x1200 -depth 16 -rfbwait 30000 -rfbauth /home/bistel/.vnc/passwd -rfbport 5901 -pn -fp /usr/X11R6/lib/X11/fonts/Type1/,/usr/X11R6/lib/X11/fonts/Speedo/,/usr/X11R6/lib/X11/fonts/misc/,/usr/X11R6/lib/X11/fonts/75dpi/,/usr/X11R6/lib/X11/fonts/100dpi/,/usr/share/fonts/X11/misc/,/usr/share/fonts/X11/Type1/,/usr/share/fonts/X11/75dpi/,/usr/share/fonts/X11/100dpi/ -co /etc/X11/rgb
```

# Mac
```{bash}
# Cmd + Space -> screen sharing -> IP -> Password: bistel01
```
