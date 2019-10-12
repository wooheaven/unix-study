# install and configure AWS Corretto Open JDK8 by manual
```
$ tar -zxf amazon-corretto-8.222.10.1-linux-x64.tar.gz -C /usr/lib/jvm

$ vi ~/.bashrc
...
# JDK8
JAVA_HOME=/usr/lib/jvm/amazon-corretto-8.222.10.1-linux-x64/
PATH=$PATH:$JAVA_HOME/bin
```
