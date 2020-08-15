# config java
```
$ sudo update-alternatives --remove-all java

$ sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0_221/bin/java" 1082 
update-alternatives: using /usr/lib/jvm/jdk1.8.0_221/bin/java to provide /usr/bin/java (java) in auto mode

$ sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-8-openjdk-amd64/bin/java" 1081

$ sudo update-alternatives --config java
There are 2 choices for the alternative java (providing /usr/bin/java).

  Selection    Path                                        Priority   Status
------------------------------------------------------------
* 0            /usr/lib/jvm/jdk1.8.0_221/bin/java           1082      auto mode
  1            /usr/lib/jvm/java-8-openjdk-amd64/bin/java   1081      manual mode
  2            /usr/lib/jvm/jdk1.8.0_221/bin/java           1082      manual mode

Press <enter> to keep the current choice[*], or type selection number: 

# if you want to remove java link on update-alternatives
$ sudo update-alternatives --remove java /usr/lib/jvm/java-8-openjdk-amd64/bin/java
```

# config javac
```
$ sudo update-alternatives --remove-all javac

$ sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_221/bin/javac" 1082
update-alternatives: using /usr/lib/jvm/jdk1.8.0_221/bin/javac to provide /usr/bin/javac (javac) in auto mode

$ sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/java-8-openjdk-amd64/bin/javac" 1081

$ sudo update-alternatives --config javac
There are 2 choices for the alternative javac (providing /usr/bin/javac).

  Selection    Path                                         Priority   Status
------------------------------------------------------------
* 0            /usr/lib/jvm/jdk1.8.0_221/bin/javac           1082      auto mode
  1            /usr/lib/jvm/java-8-openjdk-amd64/bin/javac   1081      manual mode
  2            /usr/lib/jvm/jdk1.8.0_221/bin/javac           1082      manual mode

Press <enter> to keep the current choice[*], or type selection number:
```
