# install tomcat
```
$ brew install tomcat
==> Downloading https://www.apache.org/dyn/closer.cgi?path=/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz
==> Downloading from http://apache.mirror.cdnetworks.com/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz
######################################################################## 100.0%
==> Caveats
Warning: tomcat provides a launchd plist which can only be used on macOS!
You can manually execute the service instead with:
  catalina run
==> Summary
🍺  /home/linuxbrew/.linuxbrew/Cellar/tomcat/9.0.30: 641 files, 15.3MB, built in 4 seconds
```

# start stop tomcat
```
$ catalina start
Using CATALINA_BASE:   /home/linuxbrew/.linuxbrew/Cellar/tomcat/9.0.30/libexec
Using CATALINA_HOME:   /home/linuxbrew/.linuxbrew/Cellar/tomcat/9.0.30/libexec
Using CATALINA_TMPDIR: /home/linuxbrew/.linuxbrew/Cellar/tomcat/9.0.30/libexec/temp
Using JRE_HOME:        /home/ubuntu/.sdkman/candidates/java/current
Using CLASSPATH:       /home/linuxbrew/.linuxbrew/Cellar/tomcat/9.0.30/libexec/bin/bootstrap.jar:/home/linuxbrew/.linuxbrew/Cellar/tomcat/9.0.30/libexec/bin/tomcat-juli.jar
Tomcat started.

$ pwd
/home/linuxbrew/.linuxbrew/Cellar/tomcat/9.0.30/libexec/webapps

$ ll ROOT/
total 192
drwxr-x--- 3 ubuntu ubuntu  4096  1월 11 00:41 ./
drwxr-x--- 7 ubuntu ubuntu  4096 12월  8 01:43 ../
-rw-r----- 1 ubuntu ubuntu 27235 12월  8 01:46 asf-logo-wide.svg
-rw-r----- 1 ubuntu ubuntu   713 12월  8 01:43 bg-button.png
-rw-r----- 1 ubuntu ubuntu  1918 12월  8 01:43 bg-middle.png
-rw-r----- 1 ubuntu ubuntu  1401 12월  8 01:43 bg-nav.png
-rw-r----- 1 ubuntu ubuntu  3103 12월  8 01:43 bg-upper.png
-rw-r----- 1 ubuntu ubuntu 21630 12월  8 01:43 favicon.ico
-rw-r----- 1 ubuntu ubuntu 12220 12월  8 01:46 index.jsp
-rw-r----- 1 ubuntu ubuntu  6898 12월  8 01:46 RELEASE-NOTES.txt
-rw-r----- 1 ubuntu ubuntu  5581 12월  8 01:46 tomcat.css
-rw-r----- 1 ubuntu ubuntu  2066 12월  8 01:43 tomcat.gif
-rw-r----- 1 ubuntu ubuntu  5103 12월  8 01:43 tomcat.png
-rw-r----- 1 ubuntu ubuntu  2376 12월  8 01:43 tomcat-power.gif
-rw-r----- 1 ubuntu ubuntu 67795 12월  8 01:46 tomcat.svg
drwxr-x--- 2 ubuntu ubuntu  4096  1월 11 00:41 WEB-INF/

$ catalina stop
Using CATALINA_BASE:   /home/linuxbrew/.linuxbrew/Cellar/tomcat/9.0.30/libexec
Using CATALINA_HOME:   /home/linuxbrew/.linuxbrew/Cellar/tomcat/9.0.30/libexec
Using CATALINA_TMPDIR: /home/linuxbrew/.linuxbrew/Cellar/tomcat/9.0.30/libexec/temp
Using JRE_HOME:        /home/ubuntu/.sdkman/candidates/java/current
Using CLASSPATH:       /home/linuxbrew/.linuxbrew/Cellar/tomcat/9.0.30/libexec/bin/bootstrap.jar:/home/linuxbrew/.linuxbrew/Cellar/tomcat/9.0.30/libexec/bin/tomcat-juli.jar
```
