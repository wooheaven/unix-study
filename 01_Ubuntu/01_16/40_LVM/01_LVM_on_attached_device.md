# create LVM on attached disk with partition
```{bash}
# attached disk = /dev/vdb
# partition = /dev/vdb5 /dev/vdb6

# physical volume
root@BIStelResearchDev-NN:~# pvcreate /dev/vdb5
WARNING: ext4 signature detected on /dev/vdb5 at offset 1080. Wipe it? [y/n]: y
  Wiping ext4 signature on /dev/vdb5.
  Physical volume "/dev/vdb5" successfully created
root@BIStelResearchDev-NN:~# pvcreate /dev/vdb6
WARNING: ext4 signature detected on /dev/vdb6 at offset 1080. Wipe it? [y/n]: y
  Wiping ext4 signature on /dev/vdb6.
  Physical volume "/dev/vdb6" successfully created

root@BIStelResearchDev-NN:~# pvs
  PV         VG   Fmt  Attr PSize   PFree
  /dev/vdb5       lvm2 ---  186.26g 186.26g
  /dev/vdb6       lvm2 ---  613.73g 613.73g
root@BIStelResearchDev-NN:~# pvdisplay
  "/dev/vdb5" is a new physical volume of "186.26 GiB"
  --- NEW Physical volume ---
  PV Name               /dev/vdb5
  VG Name
  PV Size               186.26 GiB
  Allocatable           NO
  PE Size               0
  Total PE              0
  Free PE               0
  Allocated PE          0
  PV UUID               PQJ1Rt-egN9-bQq0-z795-jZjL-jMmm-1nxA05

  "/dev/vdb6" is a new physical volume of "613.73 GiB"
  --- NEW Physical volume ---
  PV Name               /dev/vdb6
  VG Name
  PV Size               613.73 GiB
  Allocatable           NO
  PE Size               0
  Total PE              0
  Free PE               0
  Allocated PE          0
  PV UUID               U3R0rW-9dTf-XJ1z-1jS5-bpVi-jvW1-9Tfq8A

# volume group
root@BIStelResearchDev-NN:~# vgcreate vg_os /dev/vdb5
  Volume group "vg_os" successfully created
root@BIStelResearchDev-NN:~# vgcreate vg_hadoop /dev/vdb6
  Volume group "vg_hadoop" successfully created

root@BIStelResearchDev-NN:~# vgs
  VG        #PV #LV #SN Attr   VSize   VFree
  vg_hadoop   1   0   0 wz--n- 613.73g 613.73g
  vg_os       1   0   0 wz--n- 186.26g 186.26g
root@BIStelResearchDev-NN:~# vgdisplay
  --- Volume group ---
  VG Name               vg_os
  System ID
  Format                lvm2
  Metadata Areas        1
  Metadata Sequence No  1
  VG Access             read/write
  VG Status             resizable
  MAX LV                0
  Cur LV                0
  Open LV               0
  Max PV                0
  Cur PV                1
  Act PV                1
  VG Size               186.26 GiB
  PE Size               4.00 MiB
  Total PE              47683
  Alloc PE / Size       0 / 0
  Free  PE / Size       47683 / 186.26 GiB
  VG UUID               FGHWbx-AdH7-wuED-nfrr-fclQ-iWs7-GEJw0w

  --- Volume group ---
  VG Name               vg_hadoop
  System ID
  Format                lvm2
  Metadata Areas        1
  Metadata Sequence No  1
  VG Access             read/write
  VG Status             resizable
  MAX LV                0
  Cur LV                0
  Open LV               0
  Max PV                0
  Cur PV                1
  Act PV                1
  VG Size               613.73 GiB
  PE Size               4.00 MiB
  Total PE              157115
  Alloc PE / Size       0 / 0
  Free  PE / Size       157115 / 613.73 GiB
  VG UUID               8UvQl0-eTuO-MWUh-aLgk-tUU2-OS2k-PMdFce

# logical volume
root@BIStelResearchDev-NN:~# lvcreate --name lv_var -l 100%FREE vg_os
  Logical volume "lv_var" created.
root@BIStelResearchDev-NN:~# lvcreate --name lv_home -l 100%FREE vg_hadoop
  Logical volume "lv_home" created.

root@BIStelResearchDev-NN:~# lvs
  LV      VG        Attr       LSize   Pool Origin Data%  Meta%  Move Log Cpy%Sync Convert
  lv_home vg_hadoop -wi-a----- 613.73g
  lv_var  vg_os     -wi-a----- 186.26g
root@BIStelResearchDev-NN:~# lvdisplay
  --- Logical volume ---
  LV Path                /dev/vg_os/lv_var
  LV Name                lv_var
  VG Name                vg_os
  LV UUID                8Wk2j3-sHKi-nC5m-zUBw-mPAR-enSh-G1VY1X
  LV Write Access        read/write
  LV Creation host, time BIStelResearchDev-NN, 2018-06-21 18:04:25 +0900
  LV Status              available
  # open                 0
  LV Size                186.26 GiB
  Current LE             47683
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     256
  Block device           252:0

  --- Logical volume ---
  LV Path                /dev/vg_hadoop/lv_home
  LV Name                lv_home
  VG Name                vg_hadoop
  LV UUID                Ibe6m5-Jc2e-beDH-nVaM-XMDh-BHab-iPVXfZ
  LV Write Access        read/write
  LV Creation host, time BIStelResearchDev-NN, 2018-06-21 18:04:41 +0900
  LV Status              available
  # open                 0
  LV Size                613.73 GiB
  Current LE             157115
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     256
  Block device           252:1

# format logical volume as ext4
root@BIStelResearchDev-NN:~# mkfs.ext4 /dev/vg_os/lv_var
mke2fs 1.42.13 (17-May-2015)
Creating filesystem with 48827392 4k blocks and 12214272 inodes
Filesystem UUID: 39884717-4946-4a2f-854d-905283188a23
Superblock backups stored on blocks:
    32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208,
    4096000, 7962624, 11239424, 20480000, 23887872

Allocating group tables: done
Writing inode tables: done
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done

root@BIStelResearchDev-NN:~# mkfs.ext4 /dev/vg_hadoop/lv_home
mke2fs 1.42.13 (17-May-2015)
Creating filesystem with 160885760 4k blocks and 40222720 inodes
Filesystem UUID: 9be8266c-cd3e-43c3-bcb9-60bd90d87fce
Superblock backups stored on blocks:
    32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208,
    4096000, 7962624, 11239424, 20480000, 23887872, 71663616, 78675968,
    102400000

Allocating group tables: done
Writing inode tables: done
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done
```

# move /home/hadoop/hadoop to Attached dick using LVM 
```{bash}
# check Filesystem and Mount
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        30G  5.4G   25G  18% /
devtmpfs         16G     0   16G   0% /dev
tmpfs            16G     0   16G   0% /dev/shm
tmpfs            16G  8.4M   16G   1% /run
tmpfs            16G     0   16G   0% /sys/fs/cgroup
/dev/sdb1        63G   53M   60G   1% /mnt/resource
tmpfs           3.2G     0  3.2G   0% /run/user/1000
tmpfs           3.2G     0  3.2G   0% /run/user/0

# check attached disk
$ fdisk /dev/sd
/dev/sda  /dev/sdb  /dev/sdc

$ fdisk /dev/sdc

The device presents a logical sector size that is smaller than
the physical sector size. Aligning to a physical sector (or optimal
I/O) size boundary is recommended, or performance may be impacted.
Welcome to fdisk (util-linux 2.23.2).

Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Command (m for help): p

  Disk /dev/sdc: 549.8 GB, 549755813888 bytes, 1073741824 sectors
  Units = sectors of 1 * 512 = 512 bytes
  Sector size (logical/physical): 512 bytes / 4096 bytes
  I/O size (minimum/optimal): 4096 bytes / 4096 bytes
  Disk label type: dos
	  Disk identifier: 0x08dbff76

  Device Boot      Start         End      Blocks   Id  System
  /dev/sdc1            2048  1073741823   536869888   8e  Linux LVM

  Command (m for help): q

# use LVM
$ pvscan
No matching physical volumes found

$ pvdisplay

$ pvcreate /dev/sdc1
Physical volume "/dev/sdc1" successfully created

$ pvdisplay
"/dev/sdc1" is a new physical volume of "512.00 GiB"
--- NEW Physical volume ---
PV Name               /dev/sdc1
VG Name
PV Size               512.00 GiB
Allocatable           NO
PE Size               0
Total PE              0
Free PE               0
Allocated PE          0
PV UUID               IEEzX6-ImbT-b4lm-CaNO-d68N-K0cp-BJyMDq

$ vgdisplay

$ vgcreate vg_hadoop /dev/sdc1
Volume group "vg_hadoop" successfully created

$ vgdisplay
--- Volume group ---
VG Name               vg_hadoop
System ID
Format                lvm2
Metadata Areas        1
Metadata Sequence No  1
VG Access             read/write
VG Status             resizable
MAX LV                0
Cur LV                0
Open LV               0
Max PV                0
Cur PV                1
Act PV                1
VG Size               512.00 GiB
PE Size               4.00 MiB
Total PE              131071
Alloc PE / Size       0 / 0
Free  PE / Size       131071 / 512.00 GiB
VG UUID               230GbP-cYf7-saGb-eRJm-FRt9-dV4h-oNsLSd

$ lvdisplay

$ lvcreate --name lv_hadoop -l 100%FREE vg_hadoop
Logical volume "lv_hadoop" created.

$ lvdisplay
--- Logical volume ---
LV Path                /dev/vg_hadoop/lv_hadoop
LV Name                lv_hadoop
VG Name                vg_hadoop
LV UUID                USDDjC-S7FJ-Mqxp-kWxD-uBWU-hIhr-4Q9TnV
LV Write Access        read/write
LV Creation host, time spark-master, 2017-02-13 07:18:55 +0000
LV Status              available
# open                 0
LV Size                512.00 GiB
Current LE             131071
Segments               1
Allocation             inherit
Read ahead sectors     auto
- currently set to     8192
Block device           253:0

# format logical volume as ext4
$ mkfs.ext4 /dev/vg_hadoop/lv_hadoop
mke2fs 1.42.9 (28-Dec-2013)
Discarding device blocks: done
Filesystem label=
OS type: Linux
Block size=4096 (log=2)
Fragment size=4096 (log=2)
Stride=0 blocks, Stripe width=0 blocks
33554432 inodes, 134216704 blocks
6710835 blocks (5.00%) reserved for the super user
First data block=0
Maximum filesystem blocks=2281701376
4096 block groups
32768 blocks per group, 32768 fragments per group
8192 inodes per group
Superblock backups stored on blocks:
32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208,
4096000, 7962624, 11239424, 20480000, 23887872, 71663616, 78675968,
102400000

Allocating group tables: done
Writing inode tables: done
Creating journal (32768 blocks): done
 Writing superblocks and filesystem accounting information: done

# Mount
$ mkdir -p /srv/home
$ mkdir -p /srv/home/hadoop
$ mkdir -p /srv/home/hadoop/hadoop
$ mkdir /home/hadoop/hadoop

$ mount /dev/vg_hadoop/lv_hadoop /srv/home/hadoop/hadoop

$ rsync -ar /home/hadoop/hadoop/* /srv/home/hadoop/hadoop/
$ diff -r /home/hadoop/hadoop/ /srv/home/hadoop/hadoop/

$ rm -rf /home/hadoop/hadoop/
$ umount /srv/home/hadoop/hadoop/
$ mount /dev/v_hadoop/lv_hadoop/ /home/hadoop/hadoop
$ rm -rf /srv/home/hadoop/hadoop/
$ rm -rf /srv/home/hadoop/
$ rm -rf /srv/home/

$ df -h
Filesystem                       Size  Used Avail Use% Mounted on
/dev/sda1                         30G  5.4G   25G  18% /
devtmpfs                          16G     0   16G   0% /dev
tmpfs                             16G     0   16G   0% /dev/shm
tmpfs                             16G  8.4M   16G   1% /run
tmpfs                             16G     0   16G   0% /sys/fs/cgroup
/dev/sdb1                         63G   53M   60G   1% /mnt/resource
tmpfs                            3.2G     0  3.2G   0% /run/user/1000
tmpfs                            3.2G     0  3.2G   0% /run/user/0
/dev/mapper/vg_hadoop-lv_hadoop  504G   73M  479G   1% /home/hadoop/hadoop

$ blkid | grep sdc1
/dev/sdc1: UUID="5dda0e38-6696-497f-8005-52f989a7206d" TYPE="ext4" PARTUUID="5d53dc53-05"

$ vi /etc/fstab
$ cat /etc/fstab
# <file system> <mount point>   <type>  <options>       <dump>  <pass>
UUID=5dda0e38-6696-497f-8005-52f989a7206d /home/hadoop/hadoop               ext4    defaults         0       2
```
