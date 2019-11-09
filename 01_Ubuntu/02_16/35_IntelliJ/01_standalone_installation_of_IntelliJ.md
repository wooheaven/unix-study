```
$ ll ideaIC-2019.2.3-no-jbr.tar.gz
-rw-rw-r--  1 ubuntu ubuntu 564692551 10월  6 22:39 ideaIC-2019.2.3-no-jbr.tar.gz

$ sudo mkdir /usr/local/IntelliJ

$ ll /usr/local/IntelliJ/
total 8
drwxr-xr-x  2 root root 4096 10월  6 22:43 ./

$ sudo tar -zxf ideaIC-2019.2.3-no-jbr.tar.gz -C /usr/local/IntelliJ/

$ ll /usr/local/IntelliJ/
total 12
drwxr-xr-x  3 root root 4096 10월  6 22:47 ./
drwxr-xr-x 12 root root 4096 10월  6 22:43 ../
drwxr-xr-x  7 root root 4096 10월  6 22:47 idea-IC-192.6817.14/

$ vi ~/.bashrc
...
# IntelliJ
export IDEA_JDK="/usr/lib/jvm/java-8-openjdk-amd64/"

$ ./idea-IC-192.6817.14/bin/idea.sh
```
