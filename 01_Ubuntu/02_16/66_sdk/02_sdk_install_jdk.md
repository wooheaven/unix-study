# sdk install java
```
$ sdk list java
================================================================================
Available Java Versions
================================================================================
 Vendor        | Use | Version      | Dist    | Status     | Identifier
--------------------------------------------------------------------------------
 AdoptOpenJDK  |     | 13.0.0.j9    | adpt    |            | 13.0.0.j9-adpt      
               |     | 13.0.0.hs    | adpt    |            | 13.0.0.hs-adpt      
               |     | 12.0.2.j9    | adpt    |            | 12.0.2.j9-adpt      
               |     | 12.0.2.hs    | adpt    |            | 12.0.2.hs-adpt      
               |     | 11.0.4.j9    | adpt    |            | 11.0.4.j9-adpt      
               |     | 11.0.4.hs    | adpt    |            | 11.0.4.hs-adpt      
               |     | 8.0.222.j9   | adpt    |            | 8.0.222.j9-adpt     
               |     | 8.0.222.hs   | adpt    |            | 8.0.222.hs-adpt     
 Amazon        |     | 11.0.4       | amzn    |            | 11.0.4-amzn         
               |     | 8.0.222      | amzn    |            | 8.0.222-amzn        
 Azul Zulu     |     | 13.0.0       | zulu    |            | 13.0.0-zulu         
               |     | 12.0.2       | zulu    |            | 12.0.2-zulu         
               |     | 11.0.4       | zulu    |            | 11.0.4-zulu         
               |     | 10.0.2       | zulu    |            | 10.0.2-zulu         
               |     | 9.0.7        | zulu    |            | 9.0.7-zulu          
               |     | 8.0.222      | zulu    |            | 8.0.222-zulu        
               |     | 7.0.232      | zulu    |            | 7.0.232-zulu        
               |     | 6.0.119      | zulu    |            | 6.0.119-zulu        
 Azul ZuluFX   |     | 11.0.2       | zulufx  |            | 11.0.2-zulufx       
               |     | 8.0.202      | zulufx  |            | 8.0.202-zulufx      
 BellSoft      |     | 13.0.0       | librca  |            | 13.0.0-librca       
               |     | 12.0.2       | librca  |            | 12.0.2-librca       
               |     | 11.0.4       | librca  |            | 11.0.4-librca       
               |     | 8.0.222      | librca  |            | 8.0.222-librca      
 GraalVM       |     | 19.2.0       | grl     |            | 19.2.0-grl          
               |     | 19.2.0.1     | grl     |            | 19.2.0.1-grl        
               |     | 19.1.1       | grl     |            | 19.1.1-grl          
               |     | 19.0.2       | grl     |            | 19.0.2-grl          
               |     | 1.0.0        | grl     |            | 1.0.0-rc-16-grl     
 Java.net      |     | 14.ea.17     | open    |            | 14.ea.17-open       
               |     | 13.0.0       | open    |            | 13.0.0-open         
               |     | 12.0.2       | open    |            | 12.0.2-open         
               |     | 11.0.2       | open    |            | 11.0.2-open         
               |     | 10.0.2       | open    |            | 10.0.2-open         
               |     | 9.0.4        | open    |            | 9.0.4-open          
 SAP           |     | 12.0.2       | sapmchn |            | 12.0.2-sapmchn      
               |     | 11.0.4       | sapmchn |            | 11.0.4-sapmchn      
================================================================================
Use the Identifier for installation:

    $ sdk install java 11.0.3.hs-adpt
================================================================================

$ ls -l /usr/lib/jvm/
total 32
drwxr-xr-x   4 root   root    4096 10월 14 23:03 ./
drwxr-xr-x 165 root   root   16384  9월  4 16:08 ../
lrwxrwxrwx   1 root   root      24  2월 26  2016 default-java -> java-1.8.0-openjdk-amd64/
lrwxrwxrwx   1 root   root      20  4월 26 12:20 java-1.8.0-openjdk-amd64 -> java-8-openjdk-amd64/
-rw-r--r--   1 root   root    2714  7월 19 06:45 .java-1.8.0-openjdk-amd64.jinfo
drwxr-xr-x   7 root   root    4096  8월 21 22:41 java-8-openjdk-amd64/
drwxr-xr-x   7 ubuntu ubuntu  4096  7월  4 20:37 jdk1.8.0_221/

$ sdk install java oracle-8 /usr/lib/jvm/jdk1.8.0_221
Linking java oracle-8 to /usr/lib/jvm/jdk1.8.0_221
Done installing!

$ sdk default java oracle-8
Default java version set to oracle-8

$ sdk install java openjdk-8 /usr/lib/jvm/java-8-openjdk-amd64
Linking java openjdk-8 to /usr/lib/jvm/java-8-openjdk-amd64
Done installing!

$ sdk install java 19.2.0.1-grl
Downloading: java 19.2.0.1-grl
In progress...
######################################################################## 100.0%

Repackaging Java 19.2.0.1-grl...
Done repackaging...

Installing: java 19.2.0.1-grl
Done installing!

Do you want java 8.0.222-zulu to be set as default? (Y/n): n

$ sdk install java 8.0.222-zulu
Downloading: java 8.0.222-zulu
In progress...
######################################################################## 100.0%

Repackaging Java 8.0.222-zulu...
Done repackaging...

Installing: java 8.0.222-zulu
Done installing!

Do you want java 8.0.222-zulu to be set as default? (Y/n): n

$ sdk install java 8.0.222-amzn
Downloading: java 8.0.222-amzn
In progress...
######################################################################## 100.0%

Repackaging Java 8.0.222-amzn...
Done repackaging...

Installing: java 8.0.222-amzn
Done installing!

Do you want java 8.0.222-amzn to be set as default? (Y/n): n

$ sdk list java
================================================================================
Available Java Versions
================================================================================
 Vendor        | Use | Version      | Dist    | Status     | Identifier
--------------------------------------------------------------------------------
 AdoptOpenJDK  |     | 13.0.0.j9    | adpt    |            | 13.0.0.j9-adpt      
               |     | 13.0.0.hs    | adpt    |            | 13.0.0.hs-adpt      
               |     | 12.0.2.j9    | adpt    |            | 12.0.2.j9-adpt      
               |     | 12.0.2.hs    | adpt    |            | 12.0.2.hs-adpt      
               |     | 11.0.4.j9    | adpt    |            | 11.0.4.j9-adpt      
               |     | 11.0.4.hs    | adpt    |            | 11.0.4.hs-adpt      
               |     | 8.0.222.j9   | adpt    |            | 8.0.222.j9-adpt     
               |     | 8.0.222.hs   | adpt    |            | 8.0.222.hs-adpt     
 Amazon        |     | 11.0.4       | amzn    |            | 11.0.4-amzn         
               |     | 8.0.222      | amzn    | installed  | 8.0.222-amzn        
 Azul Zulu     |     | 13.0.0       | zulu    |            | 13.0.0-zulu         
               |     | 12.0.2       | zulu    |            | 12.0.2-zulu         
               |     | 11.0.4       | zulu    |            | 11.0.4-zulu         
               |     | 10.0.2       | zulu    |            | 10.0.2-zulu         
               |     | 9.0.7        | zulu    |            | 9.0.7-zulu          
               |     | 8.0.222      | zulu    | installed  | 8.0.222-zulu        
               |     | 7.0.232      | zulu    |            | 7.0.232-zulu        
               |     | 6.0.119      | zulu    |            | 6.0.119-zulu        
 Azul ZuluFX   |     | 11.0.2       | zulufx  |            | 11.0.2-zulufx       
               |     | 8.0.202      | zulufx  |            | 8.0.202-zulufx      
 BellSoft      |     | 13.0.0       | librca  |            | 13.0.0-librca       
               |     | 12.0.2       | librca  |            | 12.0.2-librca       
               |     | 11.0.4       | librca  |            | 11.0.4-librca       
               |     | 8.0.222      | librca  |            | 8.0.222-librca      
 GraalVM       |     | 19.2.0       | grl     |            | 19.2.0-grl          
               |     | 19.2.0.1     | grl     | installed  | 19.2.0.1-grl        
               |     | 19.1.1       | grl     |            | 19.1.1-grl          
               |     | 19.0.2       | grl     |            | 19.0.2-grl          
               |     | 1.0.0        | grl     |            | 1.0.0-rc-16-grl     
 Java.net      |     | 14.ea.17     | open    |            | 14.ea.17-open       
               |     | 13.0.0       | open    |            | 13.0.0-open         
               |     | 12.0.2       | open    |            | 12.0.2-open         
               |     | 11.0.2       | open    |            | 11.0.2-open         
               |     | 10.0.2       | open    |            | 10.0.2-open         
               |     | 9.0.4        | open    |            | 9.0.4-open          
 SAP           |     | 12.0.2       | sapmchn |            | 12.0.2-sapmchn      
               |     | 11.0.4       | sapmchn |            | 11.0.4-sapmchn      
 Unclassified  | >>> | oracle       | none    | local only | oracle-8            
               |     | openjdk      | none    | local only | openjdk-8           
================================================================================

$ ll ~/.sdkman/candidates/java/
total 20
drwxrwxr-x 5 ubuntu ubuntu 4096 10월 14 23:40 ./
drwxrwxr-x 3 ubuntu ubuntu 4096 10월 13 20:34 ../
drwxrwxr-x 8 ubuntu ubuntu 4096 10월 14 21:21 19.2.0.1-grl/
drwxr-xr-x 7 ubuntu ubuntu 4096  7월 12 05:56 8.0.222-amzn/
drwxrwxr-x 9 ubuntu ubuntu 4096  7월 12 03:44 8.0.222-zulu/
lrwxrwxrwx 1 ubuntu ubuntu   45 10월 14 23:40 current -> /home/ubuntu/.sdkman/candidates/java/oracle-8/
lrwxrwxrwx 1 ubuntu ubuntu   33 10월 14 23:39 openjdk-8 -> /usr/lib/jvm/java-8-openjdk-amd64/
lrwxrwxrwx 1 ubuntu ubuntu   25 10월 14 23:40 oracle-8 -> /usr/lib/jvm/jdk1.8.0_221/

$  ll ~/.sdkman/archives/
total 588528
drwxrwxr-x  2 ubuntu ubuntu      4096 10월 14 23:07 ./
drwxrwxr-x 10 ubuntu ubuntu      4096 10월 13 20:20 ../
-rw-rw-r--  1 ubuntu ubuntu 370667211 10월 14 21:21 java-19.2.0.1-grl.zip
-rw-rw-r--  1 ubuntu ubuntu 121116855 10월 14 23:07 java-8.0.222-amzn.zip
-rw-rw-r--  1 ubuntu ubuntu 110847219 10월 14 21:55 java-8.0.222-zulu.zip

$ sdk current
Using:
java: oracle-8
```

# sdk use java
```
$ sdk current
Using:
java: oracle-8

# Ubuntu OpenJDK8
$ sdk use java openjdk-8 && java -version
Using java version openjdk-8 in this shell.

openjdk version "1.8.0_222"
OpenJDK Runtime Environment (build 1.8.0_222-8u222-b10-1ubuntu1~16.04.1-b10)
OpenJDK 64-Bit Server VM (build 25.222-b10, mixed mode)

# GraalVM JDK8
$ sdk use java 19.2.0.1-grl && java -version
Using java version 19.2.0.1-grl in this shell.

openjdk version "1.8.0_222"
OpenJDK Runtime Environment (build 1.8.0_222-20190711120915.buildslave.jdk8u-src-tar--b08)
OpenJDK 64-Bit GraalVM CE 19.2.0.1 (build 25.222-b08-jvmci-19.2-b02, mixed mode)

# Zulu JDK8
$ sdk use java 8.0.222-zulu && java -version
Using java version 8.0.222-zulu in this shell.

openjdk version "1.8.0_222"
OpenJDK Runtime Environment (Zulu 8.40.0.25-CA-linux64) (build 1.8.0_222-b10)
OpenJDK 64-Bit Server VM (Zulu 8.40.0.25-CA-linux64) (build 25.222-b10, mixed mode)

# Oracle JDK8
$ sdk use java oracle-8 && java -version
Using java version oracle-8 in this shell.

java version "1.8.0_221"
Java(TM) SE Runtime Environment (build 1.8.0_221-b11)
Java HotSpot(TM) 64-Bit Server VM (build 25.221-b11, mixed mode)

# Amazon Corretto JDK8
$ sdk use java 8.0.222-amzn && java -version
Using java version 8.0.222-amzn in this shell.

openjdk version "1.8.0_222"
OpenJDK Runtime Environment Corretto-8.222.10.1 (build 1.8.0_222-b10)
OpenJDK 64-Bit Server VM Corretto-8.222.10.1 (build 25.222-b10, mixed mode)
```
