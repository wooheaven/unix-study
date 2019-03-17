# ImportError after pip3 install --upgrade pip
```bash
$ pip3 list
Traceback (most recent call last):
  File "/usr/bin/pip3", line 9, in <module>
    from pip import main
ImportError: cannot import name 'main'
```

# solution
```bash
$ sudo python3 -m pip uninstall pip && sudo apt install python3-pip --reinstall
```
