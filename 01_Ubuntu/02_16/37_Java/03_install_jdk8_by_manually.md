# install
```
$ mkdir /usr/lib/jvm
$ tar -zxf jdk-8u221-linux-x64.tar.gz -C /usr/lib/jvm
$ vi ~/.bashrc
...
# JAVA"
JAVA_HOME=/usr/lib/jvm/jdk1.8.0_221
PATH=$PATH:$JAVA_HOME/bin
$ source ~/.bashrc
```
# check
```
$ which java
/usr/lib/jvm/jdk1.8.0_221/bin/java

$ java -version
java version "1.8.0_221"
Java(TM) SE Runtime Environment (build 1.8.0_221-b11)
Java HotSpot(TM) 64-Bit Server VM (build 25.221-b11, mixed mode)
```
