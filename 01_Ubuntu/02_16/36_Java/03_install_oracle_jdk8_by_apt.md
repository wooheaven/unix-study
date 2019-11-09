# install and configure oracle JDK8 by apt
```
$ sudo apt-add-repository ppa:webupd8team/java
$ sudo apt-get update

$ sudo apt-get install -y oracle-java8-installer oracle-java8-set-default

$ sudo update-alternatives --config java
$ sudo update-alternatives --config javac 

$ vi ~/.bashrc 
$ vi ~/.profile
...
# JDK8
JAVA_HOME=/usr/lib/jvm/java-8-oracle/
...

source ~/.profile
```

# check
```{bash}
$ java -version
java version "1.8.0_121"
Java(TM) SE Runtime Environment (build 1.8.0_121-b13)
Java HotSpot(TM) 64-Bit Server VM (build 25.121-b13, mixed mode)

$ javac -version
javac 1.8.0_121
```
