# jdk7 from [ Java SE 7 Archive Downloads ]
```{bash}
# ref = http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html

$ md5sum jdk-7u80-linux-x64.tar.gz 
6152f8a7561acf795ca4701daa10a965  jdk-7u80-linux-x64.tar.gz
```

# install jdk7 by manually
```{bash}
$ sudo su
$ tar -zxf jdk-7u80-linux-x64.tar.gz -C /usr/lib/jvm
$ cd /usr/lib/jvm/jdk1.7.0_80
$ vi /home/rwoo/.bashrc
# jdk7, 8
export JAVA_HOME="/usr/lib/jvm/jdk1.7.0_80"
#export JAVA_HOME="/usr/lib/jvm/java-8-oracle"

$ update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.7.0_80/bin/java" 2000
$ update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.7.0_80/bin/javac" 2000

$ update-alternatives --config java
There are 2 choices for the alternative java (providing /usr/bin/java).

  Selection    Path                                     Priority   Status
------------------------------------------------------------
  0            /usr/lib/jvm/jdk1.7.0_80/bin/java         2000      auto mode
* 1            /usr/lib/jvm/java-8-oracle/jre/bin/java   1081      manual mode
  2            /usr/lib/jvm/jdk1.7.0_80/bin/java         2000      manual mode

Press <enter> to keep the current choice[*], or type selection number: 

$ update-alternatives --config javac
There are 2 choices for the alternative javac (providing /usr/bin/javac).

  Selection    Path                                  Priority   Status
------------------------------------------------------------
  0            /usr/lib/jvm/jdk1.7.0_80/bin/javac     2000      auto mode
* 1            /usr/lib/jvm/java-8-oracle/bin/javac   1081      manual mode
  2            /usr/lib/jvm/jdk1.7.0_80/bin/javac     2000      manual mode

Press <enter> to keep the current choice[*], or type selection number: 

$ java -version
java version "1.8.0_144"
Java(TM) SE Runtime Environment (build 1.8.0_144-b01)
Java HotSpot(TM) 64-Bit Server VM (build 25.144-b01, mixed mode)

$ javac -version
javac 1.8.0_144
```
