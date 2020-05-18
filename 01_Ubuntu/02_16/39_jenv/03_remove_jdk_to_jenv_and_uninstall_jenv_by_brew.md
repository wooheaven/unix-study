# jenv remove jdk
```
$ jenv versions
  system
  1.8
  1.8.0.221
  1.8.0.222
  openjdk64-1.8.0.222
* oracle64-1.8.0.221 (set by /home/ubuntu/.jenv/version)

$ jenv remove openjdk64-1.8.0.222
JDK openjdk64-1.8.0.222 removed

$ jenv remove 1.8.0.222
JDK 1.8.0.222 removed

$ jenv remove oracle64-1.8.0.221
JDK oracle64-1.8.0.221 removed

$ jenv remove 1.8.0.221
JDK 1.8.0.221 removed

$ jenv remove 1.8
JDK 1.8 removed

$ jenv versions
jenv: version `oracle64-1.8.0.221' is not installed
  system
```

# brew uninstall jenv
```
$ brew uninstall jenv
Uninstalling /home/linuxbrew/.linuxbrew/Cellar/jenv/0.5.2... (80 files, 341KB)
```
