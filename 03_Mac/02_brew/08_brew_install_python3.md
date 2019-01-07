# brew install python3 
```{bash}
$ brew install python3
...
==> Summary
🍺  /usr/local/Cellar/python/3.7.2: 3,833 files, 59.3MB
```

# brew cleanup
```{bash}
$ /usr/local/Cellar/python/3.7.2/bin/python3 -V
Python 3.7.2

$ ll /usr/local/Cellar/python/
total 0
drwxr-xr-x  13 rwoo  admin   442B  6 25  2018 3.6.4_2/
drwxr-xr-x  13 rwoo  admin   442B  6 25  2018 3.6.5_1/
drwxr-xr-x  13 rwoo  staff   442B  1  7 16:05 3.7.2/

$ brew cleanup
...
==> This operation has freed approximately 918MB of disk space.

$ ll /usr/local/Cellar/python/
total 0
drwxr-xr-x  13 rwoo  staff   442B  1  7 16:05 3.7.2/
```

# create python3 venv
```{bash}
$ ll /usr/local/Cellar/python
total 0
drwxr-xr-x  13 rwoo  staff   442B  1  7 16:05 3.7.2/

$ /usr/local/Cellar/python/3.7.2/bin/python3 -m venv venv

$source venv/bin/activate

(venv) $ python -V
Python 3.7.2

(venv) $ which python
~/venv/bin/python

(venv) $ deactivate
$
```
