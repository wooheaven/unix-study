```{bash}
$ vi ~/.chrome-remote-desktop-session
# https://support.google.com/chrome/answer/1649523?hl=en
DESKTOP_SESSION=ubuntu XDG_CURRENT_DESKTOP=Unity XDG_RUNTIME_DIR=/run/user/$(id -u) exec /usr/sbin/lightdm-session 'gnome-session --session=ubuntu'
# https://linuxcommando.blogspot.com/2014/08/chrome-remote-desktop-connects-from.html
# exec gnome-session

# $ cat >> ~/.profile
# export CHROME_REMOTE_DESKTOP_DEFAULT_DESKTOP_SIZES=1024x768

$ wget http://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

$ sudo dpkg -i chrome-remote-desktop_current_amd64.deb
...
dpkg: dependency problems prevent configuration of chrome-remote-desktop:
 chrome-remote-desktop depends on xvfb-randr | xvfb; however:
  Package xvfb-randr is not installed.
  Package xvfb is not installed.
 chrome-remote-desktop depends on xbase-clients; however:
  Package xbase-clients is not installed.
 chrome-remote-desktop depends on python-psutil; however:
  Package python-psutil is not installed.
...

$ sudo apt-get -f install
```
