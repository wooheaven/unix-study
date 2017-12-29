# If exists /usr/local folder, then change permission
```{bash}
pwd
/usr/local

ll
total 0
drwxr-xr-x  56 root  wheel   1.9K  6 30 20:14 bin/
drwxr-xr-x  12 root  wheel   408B  3 25 11:13 git/
drwxr-xr-x  29 root  wheel   986B  3 31  2013 include/
drwxr-xr-x  20 root  wheel   680B  3 31  2013 lib/
drwxr-xr-x   5 root  wheel   170B  3 30  2013 man/
drwxr-xr-x   6 root  wheel   204B  4 11 10:27 share/

sudo chown $(whoami):admin /usr/local && sudo chown -R $(whoami):admin /usr/local
Password:

ll
total 0
drwxr-xr-x  56 rwoo  admin   1.9K  6 30 20:14 bin/
drwxr-xr-x  12 rwoo  admin   408B  3 25 11:13 git/
drwxr-xr-x  29 rwoo  admin   986B  3 31  2013 include/
drwxr-xr-x  20 rwoo  admin   680B  3 31  2013 lib/
drwxr-xr-x   5 rwoo  admin   170B  3 30  2013 man/
drwxr-xr-x   6 rwoo  admin   204B  4 11 10:27 share/
```

# Install brew
```{bash}
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

ll 
total 32
-rw-r--r--   1 rwoo  admin   3.1K  7 12 12:11 CODEOFCONDUCT.md
-rw-r--r--   1 rwoo  admin   1.2K  7 12 12:11 LICENSE.txt
drwxr-xr-x  10 rwoo  admin   340B  7 12 12:11 Library/
-rw-r--r--   1 rwoo  admin   4.2K  7 12 12:11 README.md
drwxr-xr-x  57 rwoo  admin   1.9K  7 12 12:11 bin/
drwxr-xr-x   3 rwoo  admin   102B  7 12 12:11 etc/
drwxr-xr-x  12 rwoo  admin   408B  3 25 11:13 git/
drwxr-xr-x  29 rwoo  admin   986B  3 31  2013 include/
drwxr-xr-x  20 rwoo  admin   680B  3 31  2013 lib/
drwxr-xr-x   5 rwoo  admin   170B  3 30  2013 man/
drwxr-xr-x   8 rwoo  admin   272B  7 12 12:11 share/
```

# Update brew
```{bash}
brew update --verbose
brew -v
```

# Remove brew
```{bash}
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
```
