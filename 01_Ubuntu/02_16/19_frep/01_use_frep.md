# Activate FRep on Android Phone
```
# downlad from Link = http://strai.x0.com/frep/

tar -xzf frep_linux.tgz
cd frep_setup_linux
./linux.sh
```

# real log
```{bash}
ubuntu@ubuntu:~/Downloads/01_FRep$ tar -xzf frep_linux.tgz 
ubuntu@ubuntu:~/Downloads/01_FRep$ ll
total 852
drwxrwxr-x 3 rwoo rwoo   4096  3월 14 08:45 ./
drwxr-xr-x 9 rwoo rwoo   4096  3월 14 08:44 ../
-rw-rw-r-- 1 rwoo rwoo 858382  3월 14 08:43 frep_linux.tgz
drwxrwxr-x 3 rwoo rwoo   4096  5월 19  2017 frep_setup_linux/
ubuntu@ubuntu:~/Downloads/01_FRep$ cd frep_setup_linux/
ubuntu@ubuntu:~/Downloads/01_FRep/frep_setup_linux$ ll
total 36
drwxrwxr-x 3 rwoo rwoo  4096  5월 19  2017 ./
drwxrwxr-x 3 rwoo rwoo  4096  3월 14 08:45 ../
drwxr-xr-x 2 rwoo rwoo  4096  5월 19  2017 bin/
-rwxr-xr-x 1 rwoo rwoo  4140  5월 19  2017 linux_alt.sh*
-rwxr-xr-x 1 rwoo rwoo  3948  3월 15  2016 linux.sh*
-rw-r--r-- 1 rwoo rwoo 10888 11월 23  2012 NOTICE.txt

ubuntu@ubuntu:~/Downloads/01_FRep/frep_setup_linux$ ./linux.sh 
Switching to linux_alt.sh for Android 4.4 or later.

/system/bin/sh: kill: 26213: No such process
PID 26213 strserv killed.
After Server Started, push Ctrl-C to exit setup script.
/data/local/tmp/strserv -c &
shell@g2:/ $ /data/local/tmp/strserv -c &
[1] 12289
shell@g2:/ $ Startup strserv Ver.08Nov2017/4.2
Inputcall: virtual keyevent available. (uid:2000)
Use fifo:/data/data/com.x0.strai.frep/app_bin/  screenshot:/data/local/tmp/screenshot.png
Screenshot: screencap available.
Devices:
1: /dev/input/event5  (msm8974-taiko-mtp-snd-card Headset Jack) @ ALSA  unique id: ""
  CLASS: SWITCH
2: /dev/input/event4  (msm8974-taiko-mtp-snd-card Button Jack) @ ALSA  unique id: ""
  CLASS: KEYBOARD
3: /dev/input/event3  (hs_detect) @   unique id: ""
  CLASS: KEYBOARD SWITCH
4: /dev/input/event1  (qpnp_pon) @ qpnp_pon/input0  unique id: ""
  CLASS: KEYBOARD
5: /dev/input/event0  (touch_dev) @   unique id: ""
  CLASS: TOUCH MULTITOUCH[1080,1920]
6: /dev/input/event2  (gpio-keys) @ gpio-keys/input0  unique id: ""
  CLASS: KEYBOARD

Server Started. [Initialization finished]
^C
```
