```
$ cd /Users/rwoo/.jenv/versions
$ ll
total 0
lrwxr-xr-x  1 rwoo  staff    63B Jan  6  2017 oracle64-1.7.0.80@ -> /Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
lrwxr-xr-x  1 rwoo  staff    64B Jan  6  2017 oracle64-1.8.0.112@ -> /Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home

$ jenv versions
  system
* oracle64-1.7.0.80 (set by /Users/rwoo/.jenv/version)
  oracle64-1.8.0.112

$ jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home
oracle64-1.8.0.221 added
1.8.0.221 added
1.8 added

$ jenv versions
  system
  1.8
  1.8.0.221
* oracle64-1.7.0.80 (set by /Users/rwoo/.jenv/version)
  oracle64-1.8.0.112
  oracle64-1.8.0.221
 
$ ll
total 0
lrwxr-xr-x  1 rwoo  staff    64B Jul 26 11:14 1.8@ -> /Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home
lrwxr-xr-x  1 rwoo  staff    64B Jul 26 11:14 1.8.0.221@ -> /Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home
lrwxr-xr-x  1 rwoo  staff    63B Jan  6  2017 oracle64-1.7.0.80@ -> /Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
lrwxr-xr-x  1 rwoo  staff    64B Jan  6  2017 oracle64-1.8.0.112@ -> /Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home
lrwxr-xr-x  1 rwoo  staff    64B Jul 26 11:14 oracle64-1.8.0.221@ -> /Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home
```
