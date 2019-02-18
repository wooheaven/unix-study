# install
```{bash}
# download latest chrome
$ sudo dpkg -i google-chrome-stable_current_amd64.deb
$ sudo apt-get -f install
$ sudo apt clean
```

# configure
```{bash}
$ cp /usr/share/applications/google-chrome.desktop ~/.local/share/applications
$ vi ~/.local/share/applications/google-chrome.desktop
...
#Exec=/usr/bin/google-chrome-stable %U
Exec=/usr/bin/google-chrome-stable --password-store=basic %U
...
```
