# partition for ubuntu18 directory
```
swap	물리 메모리의 2배 (swap partition 보다 swap file을 사용하면 swap size를 유동적으로 줄 수 있다.)
/boot	커널 컴파일을 위해 500MB 이면 충분함
/usr	리눅스 응용프로그램이 설치되는 디렉토리로 /와 분리하지 않는다.(시스템 유지관리에 필요한 일부 명령어가 /usr/sbin 에 저장되기 때문에)
/var	반드시 분할이 필요한 디렉토리이고 3GB이상을 설정한다.
/home	사용자 계정이 많거나 사용자의 사용량이 많으면 분할이 필요하다.
/tmp	보안상 분할이 필요함
```
