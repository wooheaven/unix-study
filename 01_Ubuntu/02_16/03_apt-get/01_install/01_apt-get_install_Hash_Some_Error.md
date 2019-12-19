# Hash Sum mismatch case 1
```bash
$ sudo apt-get install mplayer
...
E: Failed to fetch http://kr.archive.ubuntu.com/ubuntu/pool/universe/o/openal-soft/libopenal1_1.16.0-3_amd64.deb  Hash Sum mismatch
E: Unable to fetch some archives, maybe run apt-get update or try with --fix-missing?
```

# solution
```bash
$ sudo apt-get update
$ sudo apt-get install mplayer
```

# Hash Sum mismatch case 2
```bash
$ sudo apt-get install kolourpaint4
...
Get:68 http://ftp.neowiz.com/ubuntu xenial-updates/universe amd64 plasma-framework amd64 5.18.0-0ubuntu1.1 [3,377 kB]
Err:68 http://ftp.neowiz.com/ubuntu xenial-updates/universe amd64 plasma-framework amd64 5.18.0-0ubuntu1.1           
  Hash Sum mismatch
...
E: Failed to fetch http://ftp.neowiz.com/ubuntu/pool/universe/p/plasma-framework/plasma-framework_5.18.0-0ubuntu1.1_amd64.deb  Hash Sum mismatch
...
E: Unable to fetch some archives, maybe run apt-get update or try with --fix-missing?
```

# solution by GUI
```
시스템 설정
	-> 소프트웨어 & 업데이트
	-> Ubuntu 소프트웨어
	-> 가장 가까운 서버 선택
	-> kr.archive.ubuntu.com 에서 ftp.daum.net

$ sudo apt-get clean
$ sudo apt-get update
```

# solution by CLI
```
$ sudo sed -i 's/ftp.neowiz.com/mirror.kakao.com/g' /etc/apt/sources.list

$ grep -v "#" /etc/apt/sources.list | grep -v '^$'
deb http://mirror.kakao.com/ubuntu/ xenial main restricted
deb http://mirror.kakao.com/ubuntu/ xenial-updates main restricted
deb http://mirror.kakao.com/ubuntu/ xenial universe
deb http://mirror.kakao.com/ubuntu/ xenial-updates universe
deb http://mirror.kakao.com/ubuntu/ xenial multiverse
deb http://mirror.kakao.com/ubuntu/ xenial-updates multiverse
deb http://mirror.kakao.com/ubuntu/ xenial-backports main restricted universe multiverse
deb http://mirror.kakao.com/ubuntu/ xenial-security main restricted
deb http://mirror.kakao.com/ubuntu/ xenial-security universe
deb http://mirror.kakao.com/ubuntu/ xenial-security multiverse

$ sudo apt-get clean
$ sudo apt-get update
```
