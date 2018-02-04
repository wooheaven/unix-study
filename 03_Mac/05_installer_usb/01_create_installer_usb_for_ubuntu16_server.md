# ref
```
https://medium.com/fellow-hobbyist/create-a-bootable-usb-for-ubuntu-14-04-lts-for-a-pc-using-mac-osx-7e3f9b30d421
```

# download link
```
https://launchpad.net/ubuntu/+cdmirrors
http://ftp.harukasan.org/ubuntu-releases/16.04.3/
```

# download iso and check md5sum
```{bash}
wget http://ftp.harukasan.org/ubuntu-releases/16.04.3/MD5SUMS
wget http://ftp.harukasan.org/ubuntu-releases/16.04.3/ubuntu-16.04.3-server-amd64.iso

md5 ubuntu-16.04.3-server-amd64.iso
MD5 (ubuntu-16.04.3-server-amd64.iso) = 10fcd20619dce11fe094e960c85ba4a9

cat MD5SUMS | grep server | grep iso | grep amd
10fcd20619dce11fe094e960c85ba4a9 *ubuntu-16.04.3-server-amd64.img
```

# convert
```{bash}
hdiutil convert -format UDRW -o ubuntu-16.04.3-server-amd64.iso.img ubuntu-16.04.3-server-amd64.iso
ll
```

# list mounted disks and find usb
```{bash}
diskutil list
```

# unmount usb
```{bash}
diskutil unmountDisk /dev/disk2
```

# create bootable usb for ubuntu 16 server
```{bash}
sudo dd if=ubuntu-16.04.3-server-amd64.iso.img.dmg of=/dev/disk2 bs=1m
```

# eject usb
```{bash}
diskutil eject /dev/disk2
```

# real log
```{zsh}
https://launchpad.net/ubuntu/+cdmirrors
http://ftp.harukasan.org/ubuntu-releases/16.04.3/

rwoo@rwooui-MacBook-Pro  ~/Downloads/u16  wget http://ftp.harukasan.org/ubuntu-releases/16.04.3/MD5SUMS
--2018-01-29 14:42:05--  http://ftp.harukasan.org/ubuntu-releases/16.04.3/MD5SUMS
Resolving ftp.harukasan.org (ftp.harukasan.org)... 14.49.101.139
Connecting to ftp.harukasan.org (ftp.harukasan.org)|14.49.101.139|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 395 [application/octet-stream]
Saving to: ‘MD5SUMS’

MD5SUMS                                                             100%[===================================================================================================================================================================>]     395  --.-KB/s    in 0.01s

2018-01-29 14:42:05 (36.6 KB/s) - ‘MD5SUMS’ saved [395/395]

 rwoo@rwooui-MacBook-Pro  ~/Downloads/u16  wget http://ftp.harukasan.org/ubuntu-releases/16.04.3/ubuntu-16.04.3-server-amd64.iso
--2018-01-29 14:41:25--  http://ftp.harukasan.org/ubuntu-releases/16.04.3/ubuntu-16.04.3-server-amd64.iso
Resolving ftp.harukasan.org (ftp.harukasan.org)... 14.49.101.139
Connecting to ftp.harukasan.org (ftp.harukasan.org)|14.49.101.139|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 865075200 (825M) [application/octet-stream]
Saving to: ‘ubuntu-16.04.3-server-amd64.iso’

ubuntu-16.04.3-server-amd64.iso                                     100%[===================================================================================================================================================================>] 825.00M  1.42MB/s    in 8m 55s

2018-01-29 14:50:20 (1.54 MB/s) - ‘ubuntu-16.04.3-server-amd64.iso’ saved [865075200/865075200]

rwoo@rwooui-MacBook-Pro  ~/Downloads/u16  md5 ubuntu-16.04.3-server-amd64.iso
MD5 (ubuntu-16.04.3-server-amd64.iso) = 10fcd20619dce11fe094e960c85ba4a9

rwoo@rwooui-MacBook-Pro  ~/Downloads/u16  cat MD5SUMS| grep server | grep iso | grep amd
10fcd20619dce11fe094e960c85ba4a9 *ubuntu-16.04.3-server-amd64.iso

rwoo@rwooui-MacBook-Pro  ~/Downloads/u16  hdiutil convert -format UDRW -o ubuntu-16.04.3-server-amd64.iso.img ubuntu-16.04.3-server-amd64.iso
Driver Descriptor Map(DDM : 0) 읽는 중...
Ubuntu-Server 16.04.3 LTS amd64 (Apple_ISO : 1) 읽는 중...
Apple(Apple_partition_map : 2) 읽는 중...
Ubuntu-Server 16.04.3 LTS amd64 (Apple_ISO : 3) 읽는 중...
....................................................................
EFI(Apple_HFS : 4) 읽는 중...
.....................................................................
Ubuntu-Server 16.04.3 LTS amd64 (Apple_ISO : 5) 읽는 중...
..............................................................................................................................................................................................................................................................................
경과 시간:  2.019s
속도: 408.5Mbytes/초
저장: 0.0%
created: /Users/rwoo/Downloads/u16/ubuntu-16.04.3-server-amd64.iso.img.dmg

rwoo@rwooui-MacBook-Pro  ~/Downloads/u16  ll
total 3379208
-rw-r--r--@ 1 rwoo  staff   395B  8  3 22:56 MD5SUMS
-rw-r--r--@ 1 rwoo  staff   825M  8  1 20:30 ubuntu-16.04.3-server-amd64.iso
-rw-r--r--  1 rwoo  staff   825M  1 29 14:56 ubuntu-16.04.3-server-amd64.iso.img.dmg

rwoo@rwooui-MacBook-Pro  ~/Downloads/u16  diskutil list
/dev/disk0 (internal, physical):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      GUID_partition_scheme                        *251.0 GB   disk0
   1:                        EFI EFI                     209.7 MB   disk0s1
   2:          Apple_CoreStorage Macintosh HD            250.1 GB   disk0s2
   3:                 Apple_Boot Recovery HD             650.0 MB   disk0s3

/dev/disk1 (internal, virtual):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:                  Apple_HFS Macintosh HD           +249.8 GB   disk1
                                 Logical Volume on disk0s2
                                 A36C2539-1356-4365-844D-FCF22A6A158C
                                 Unencrypted

/dev/disk2 (external, physical):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      GUID_partition_scheme                        *16.1 GB    disk2
   1:                        EFI EFI                     209.7 MB   disk2s1
   2:       Microsoft Basic Data u16server               15.9 GB    disk2s2

rwoo@rwooui-MacBook-Pro  ~/Downloads/u16  diskutil unmountDisk /dev/disk2
Unmount of all volumes on disk2 was successful

rwoo@rwooui-MacBook-Pro  ~/Downloads/u16  sudo dd if=ubuntu-16.04.3-server-amd64.iso.img.dmg of=/dev/disk2 bs=1m
Password:
825+0 records in
825+0 records out
865075200 bytes transferred in 220.326505 secs (3926333 bytes/sec)


rwoo@rwooui-MacBook-Pro  ~/Downloads/u16  diskutil eject /dev/disk2
Disk /dev/disk2 ejected
```
