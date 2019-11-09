# install and configure
```{bash}
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

$ vi ~/.chrome-remote-desktop-session
DESKTOP_SESSION=ubuntu XDG_CURRENT_DESKTOP=Unity XDG_RUNTIME_DIR=/run/user/$(id -u) exec /usr/sbin/lightdm-session 'gnome-session --session=ubuntu'

$ sudo reboot
```

# Ref
```{bash}
https://support.google.com/chrome/answer/1649523?hl=en
```

# reuse same session
```{bash}
$ sudo vi /opt/google/chrome-remote-desktop
...
# FIRST_X_DISPLAY_NUMBER = 20
FIRST_X_DISPLAY_NUMBER = 0
...
def get_unused_display_number():
    """Return a candidate display number for which there is currently no
    X Server lock file"""
    display = FIRST_X_DISPLAY_NUMBER
    # while os.path.exists(X_LOCK_FILE_TEMPLATE % display):
    # display += 1
    return display
...
```
