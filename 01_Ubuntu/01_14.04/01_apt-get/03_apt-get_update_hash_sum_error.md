# apt-get update has hash sum error
```{bash}
$ sudo apt-get update
...
W: http://kr.archive.ubuntu.com/ubuntu/dists/trusty-updates/main/binary-amd64/Packages 파일을 받는데 실패했습니다  해시 합이 맞지 않습니다

W: http://kr.archive.ubuntu.com/ubuntu/dists/trusty-updates/universe/binary-amd64/Packages 파일을 받는데 실패했습니다  해시 합이 맞지 않습니다

W: http://kr.archive.ubuntu.com/ubuntu/dists/trusty-updates/main/binary-i386/Packages 파일을 받는데 실패했습니다  해시 합이 맞지 않습니다

W: http://kr.archive.ubuntu.com/ubuntu/dists/trusty-updates/universe/binary-i386/Packages 파일을 받는데 실패했습니다  해시 합이 맞지 않습니다

W: http://kr.archive.ubuntu.com/ubuntu/dists/trusty-proposed/universe/binary-amd64/Packages 파일을 받는데 실패했습니다  해시 합이 맞지 않습니다

W: http://kr.archive.ubuntu.com/ubuntu/dists/trusty-proposed/main/binary-amd64/Packages 파일을 받는데 실패했습니다  해시 합이 맞지 않습니다

W: http://kr.archive.ubuntu.com/ubuntu/dists/trusty-proposed/universe/binary-i386/Packages 파일을 받는데 실패했습니다  해시 합이 맞지 않습니다

W: http://kr.archive.ubuntu.com/ubuntu/dists/trusty-proposed/main/binary-i386/Packages 파일을 받는데 실패했습니다  해시 합이 맞지 않습니다

E: Some index files failed to download. They have been ignored, or old ones used instead.
```

# How to handle this error
```{bash}
시스템 설정
	-> 소프트웨어 & 업데이트
	-> Ubuntu 소프트웨어
	-> 가장 가까운 서버 선택
	-> kr.archive.ubuntu.com 에서 ftp.daum.net

$ sudo apt-get clean
$ sudo apt-get update
```
