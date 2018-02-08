# ref
```
http://ubuntuhandbook.org/index.php/2016/07/remote-access-ubuntu-16-04/
```

# Configure vnc
```{text}
http://ubuntuhandbook.org/index.php/2016/07/remote-access-ubuntu-16-04/
desktop sharing
-> Desktop Sharing Preferences
    -> Sharing
        -> Allow other users to view your desktop
        -> Allow other users to control your desktop
    -> Security
        -> Require the user to enter this password:
    -> Show Notification Area Icon
        -> Never
```

# Configure dconf-editor
```{text}
-> org
-> gnome
-> desktop
-> remote-access
-> require-encryption : Uncheck
```
