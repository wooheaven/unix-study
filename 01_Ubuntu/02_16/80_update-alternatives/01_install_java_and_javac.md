# config java
```
$ sudo update-alternatives --remove-all java

$ sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0_221/bin/java" 2000
update-alternatives: using /usr/lib/jvm/jdk1.8.0_221/bin/java to provide /usr/bin/java (java) in auto mode

$ sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-8-openjdk-amd64/bin/java" 1000
$ sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/amazon-corretto-8.222.10.1-linux-x64/bin/java" 1500

$ sudo update-alternatives --config java
There are 3 choices for the alternative java (providing /usr/bin/java).

  Selection    Path                                                        Priority   Status
------------------------------------------------------------
* 0            /usr/lib/jvm/jdk1.8.0_221/bin/java                           2000      auto mode
  1            /usr/lib/jvm/amazon-corretto-8.222.10.1-linux-x64/bin/java   1500      manual mode
  2            /usr/lib/jvm/java-8-openjdk-amd64/bin/java                   1000      manual mode
  3            /usr/lib/jvm/jdk1.8.0_221/bin/java                           2000      manual mode

Press <enter> to keep the current choice[*], or type selection number: 
```

# config javac
```
$ sudo update-alternatives --remove-all javac

$ sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_221/bin/javac" 2000
update-alternatives: using /usr/lib/jvm/jdk1.8.0_221/bin/javac to provide /usr/bin/javac (javac) in auto mode

$ sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/java-8-openjdk-amd64/bin/javac" 1000
$ sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/amazon-corretto-8.222.10.1-linux-x64/bin/javac" 1500

$ sudo update-alternatives --config javac
There are 3 choices for the alternative javac (providing /usr/bin/javac).

  Selection    Path                                                         Priority   Status
------------------------------------------------------------
* 0            /usr/lib/jvm/jdk1.8.0_221/bin/javac                           2000      auto mode
  1            /usr/lib/jvm/amazon-corretto-8.222.10.1-linux-x64/bin/javac   1500      manual mode
  2            /usr/lib/jvm/java-8-openjdk-amd64/bin/javac                   1000      manual mode
  3            /usr/lib/jvm/jdk1.8.0_221/bin/javac                           2000      manual mode

Press <enter> to keep the current choice[*], or type selection number:
```
