# install jenv by brew
```{bash}
$ brew install jenv
$ echo 'eval "$(jenv init -)"' >> ~/.bashrc
$ exec $SHELL -l
```

# add java to jenv
```{bash}
$ jenv add /usr/lib/jvm/java-8-oracle
oracle64-1.8.0.181 added
1.8.0.181 added
1.8 added
$ jenv add /usr/lib/jvm/jdk1.7.0_80
oracle64-1.7.0.80 added
1.7.0.80 added
1.7 added

$ jenv versions
* system (set by /home/ubuntu/.jenv/version)
  1.7
  1.7.0.80
  1.8
  1.8.0.181
  oracle64-1.7.0.80
  oracle64-1.8.0.181
```

# set local java to jenv
```{bash}
$ jenv local
jenv: no local version configured for this directory
$ jenv local oracle64-1.7.0.80
$ jenv local
oracle64-1.7.0.80
```
