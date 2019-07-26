# Check brew formula
```{bash}
brew list
```

# Install maven
```{bash}
brew install maven
```

# Enable maven on jenv
```{bash}
jenv plugins
jenv enable-plugin maven
jenv disable-plugin maven
```

# maven 
```{bash}
mvn --version
Apache Maven 3.5.0 (ff8f5e7444045639af65f6095c62210b5713f426; 2017-04-04T04:39:06+09:00)
Maven home: /usr/local/Cellar/maven/3.5.0/libexec
Java version: 1.7.0_80, vendor: Oracle Corporation
Java home: /Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home/jre
Default locale: ko_KR, platform encoding: UTF-8
OS name: "mac os x", version: "10.12.4", arch: "x86_64", family: "mac"
```
