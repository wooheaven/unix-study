# install  
```
$ sudo apt-get install openjdk-8-jdk
```

# configure  
```
$ vi ~/.bashrc
...
# JDK8
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
PATH=$PATH:$JAVA_HOME/bin

$ source ~/.bashrc
```

# check
```
$ ll /usr/lib/jvm/
$ java -version
```
