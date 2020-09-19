# apt-get update has hash sum error
```{bash}
$ apt-get update
...
E: Failed to fetch http://security.ubuntu.com/ubuntu/dists/xenial-security/universe/binary-amd64/by-hash/SHA256/845b48684f4626b6833ef175515d2f6156e959f875da3b2655bbf61b48f9882c  Hash Sum mismatch
E: Some index files failed to download. They have been ignored, or old ones used instead.
```

# why this error happend
```
$ grep -v "#" /etc/apt/sources.list | grep -v '^$'
deb http://archive.ubuntu.com/ubuntu/ xenial main restricted
deb http://archive.ubuntu.com/ubuntu/ xenial-updates main restricted
deb http://archive.ubuntu.com/ubuntu/ xenial universe
deb http://archive.ubuntu.com/ubuntu/ xenial-updates universe
deb http://archive.ubuntu.com/ubuntu/ xenial multiverse
deb http://archive.ubuntu.com/ubuntu/ xenial-updates multiverse
deb http://archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse
deb http://security.ubuntu.com/ubuntu/ xenial-security main restricted
deb http://security.ubuntu.com/ubuntu/ xenial-security universe
deb http://security.ubuntu.com/ubuntu/ xenial-security multiverse

$ curl  http://mirror.kakao.com/ubuntu/dists/xenial-security/universe/binary-amd64/by-hash/SHA256/ -o kakao.html
$ curl http://security.ubuntu.com/ubuntu/dists/xenial-security/by-hash/SHA256/ -o security.ubuntu.html

$ grep 845b kakao.html 
<tr><td><a href="845b48684f4626b6833ef175515d2f6156e959f875da3b2655bbf61b48f9882c" title="845b48684f4626b6833ef175515d2f6156e959f875da3b2655bbf61b48f9882c">845b48684f4626b6833ef175515d2f6156e959f875da3b2..&gt;</a></td><td>             590496</td><td>2019-Nov-13 23:02</td></tr>

$ grep 845b security.ubuntu.html 
$
```

# Fix this error by GUI
```{bash}
시스템 설정
	-> 소프트웨어 & 업데이트
	-> Ubuntu 소프트웨어
	-> 가장 가까운 서버 선택
	-> kr.archive.ubuntu.com 에서 ftp.daum.net

$ sudo apt-get clean
$ sudo apt-get update
```

# Fix this error by CLI
```
$ sudo sed -i 's/security.ubuntu.com/ftp.daumkakao.com/g' /etc/apt/sources.list

$ grep -v "#" /etc/apt/sources.list | grep -v '^$'
deb http://ftp.daumkakao.com/ubuntu/ xenial main restricted
deb http://ftp.daumkakao.com/ubuntu/ xenial-updates main restricted
deb http://ftp.daumkakao.com/ubuntu/ xenial universe
deb http://ftp.daumkakao.com/ubuntu/ xenial-updates universe
deb http://ftp.daumkakao.com/ubuntu/ xenial multiverse
deb http://ftp.daumkakao.com/ubuntu/ xenial-updates multiverse
deb http://ftp.daumkakao.com/ubuntu/ xenial-backports main restricted universe multiverse
deb http://ftp.daumkakao.com/ubuntu/ xenial-security main restricted
deb http://ftp.daumkakao.com/ubuntu/ xenial-security universe
deb http://ftp.daumkakao.com/ubuntu/ xenial-security multiverse

$ sudo apt-get clean
$ sudo apt-get update
```
