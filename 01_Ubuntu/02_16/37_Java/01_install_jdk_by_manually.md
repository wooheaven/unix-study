# install  
```
$ sudo tar -zxf amazon-corretto-8.222.10.1-linux-x64.tar.gz -C /usr/lib/jvm
$ sudo tar -zxf jdk-7u80-linux-x64.tar.gz -C /usr/lib/jvm
$ sudo tar -zxf jdk-8u221-linux-x64.tar.gz -C /usr/lib/jvm
```

# configure
```
$ vi ~/.bashrc
...
# JDK8
export JAVA_HOME=/usr/lib/jvm/amazon-corretto-8.222.10.1-linux-x64/
export PATH=$PATH:$JAVA_HOME/bin

$ source ~/.bashrc
```

# check
```
$ java -version
```
