# LVM for format and mount attached device 
```{bash}
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

$ mkdir /home/hadoop/hadoop

$ chown -R hadoop:hadoop /home/hadoop/hadoop

$ ls -als /home/hadoop/hadoop
total 4
0 drwxr-xr-x.  2 hadoop hadoop    6 Feb 13 07:19 .
4 drwx------. 14 hadoop hadoop 4096 Feb 13 07:19 ..

$ mount /dev/vg_hadoop/lv_hadoop /home/hadoop/hadoop

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

$ rsync -avr /home/hadoop/hadoop_old/ /home/hadoop/hadoop/

$ cd /home/hadoop/hadoop

$ ll
drwx------. 2 root   root   16384 Feb 13 07:19 lost+found

$ rm -rf lost+found/
 ```
