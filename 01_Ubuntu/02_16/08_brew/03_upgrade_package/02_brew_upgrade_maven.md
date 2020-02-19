# Error after brew update maven
```
Invalid Maven home directory configured /home/linuxbrew/.linuxbrew/Cellar/maven/latest/libexec Bundled maven 3.6.1 will be used.
```

# Solution
```
ubuntu@ubuntu:/home/linuxbrew/.linuxbrew/Cellar/maven$ pwd
/home/linuxbrew/.linuxbrew/Cellar/maven

ubuntu@ubuntu:/home/linuxbrew/.linuxbrew/Cellar/maven$ ll
total 12
drwxrwxr-x  3 ubuntu ubuntu 4096  1월 10 18:43 ./
drwxrwxr-x 44 ubuntu ubuntu 4096  1월 11 00:41 ../
drwxrwxr-x  5 ubuntu ubuntu 4096  1월 10 18:43 3.6.3/

ubuntu@ubuntu:/home/linuxbrew/.linuxbrew/Cellar/maven$ ln -s 3.6.3 latest

ubuntu@ubuntu:/home/linuxbrew/.linuxbrew/Cellar/maven$ ll
total 12
drwxrwxr-x  3 ubuntu ubuntu 4096  1월 15 16:18 ./
drwxrwxr-x 44 ubuntu ubuntu 4096  1월 11 00:41 ../
drwxrwxr-x  5 ubuntu ubuntu 4096  1월 15 16:18 3.6.3/
lrwxrwxrwx  1 ubuntu ubuntu    5  1월 15 16:18 latest -> 3.6.3/
```
