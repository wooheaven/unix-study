```{bash}
$ brew install python3
...
==> Summary
🍺  /home/linuxbrew/.linuxbrew/Cellar/python/3.7.2: 3,482 files, 65.3MB

$ brew cleanup
$ ll /home/linuxbrew/.linuxbrew/Cellar/python
total 12
drwxrwxr-x  3 rwoo rwoo 4096  1월  3 23:41 ./
drwxrwxr-x 34 rwoo rwoo 4096  1월 11 01:45 ../
drwxr-xr-x  8 rwoo rwoo 4096  1월  3 23:41 3.7.2/

$ /home/linuxbrew/.linuxbrew/bin/python3.7 -m venv venv
$ source venv/bin/activate
(venv) $ python -V
Python 3.7.2

(venv)$ deactivate
$
```
