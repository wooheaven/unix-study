# Remove and Create swap partition by parted
ref https://www.computernetworkingnotes.com/rhce-study-guide/how-to-create-swap-partition-in-linux.html  
ref https://linuxtechlab.com/create-swap-using-fdisk-fallocate/

# Check Filesystem and Mount
```{bash}
bistel@BIStelResearchDev-NN:~$ df -h
Filesystem      Size  Used Avail Use% Mounted on
udev             28G     0   28G   0% /dev
tmpfs           5.6G  8.7M  5.5G   1% /run
/dev/vda5        92G  1.1G   86G   2% /
tmpfs            28G     0   28G   0% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs            28G     0   28G   0% /sys/fs/cgroup
/dev/vda6       9.1G   77M  8.5G   1% /boot
/dev/vdb5       184G  362M  174G   1% /var
/dev/vdb6       604G   70M  574G   1% /home
tmpfs           5.6G     0  5.6G   0% /run/user/1000

bistel@BIStelResearchDev-NN:~$ sudo parted -l
Model: Virtio Block Device (virtblk)
Disk /dev/vda: 322GB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End    Size    Type      File system     Flags
 1      1048kB  322GB  322GB   extended                  boot
 7      1049kB  212GB  212GB   logical   linux-swap(v1)
 6      212GB   222GB  10.0GB  logical   ext4
 5      222GB   322GB  100GB   logical   ext4

Model: Virtio Block Device (virtblk)
Disk /dev/vdb: 859GB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End    Size   Type      File system  Flags
 1      1048kB  859GB  859GB  extended
 6      1049kB  659GB  659GB  logical   ext4
 5      659GB   859GB  200GB  logical   ext4
```

# swapoff and umount
```{bash}
bistel@BIStelResearchDev-NN:~$ sudo swapoff /dev/vda7
bistel@BIStelResearchDev-NN:~$ sudo swapon -s
bistel@BIStelResearchDev-NN:~$ sudo umount /dev/vda7
umount: /dev/vda7: not mounted
```

# remove and create swap partition by parted
```{bash}
bistel@BIStelResearchDev-NN:~$ sudo parted /dev/vda
GNU Parted 3.2
Using /dev/vda
Welcome to GNU Parted! Type 'help' to view a list of commands.
(parted) print
Model: Virtio Block Device (virtblk)
Disk /dev/vda: 322GB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End    Size    Type      File system     Flags
 1      1048kB  322GB  322GB   extended                  boot
 7      2097kB  204GB  204GB   logical   linux-swap(v1)
 6      212GB   222GB  10.0GB  logical   ext4
 5      222GB   322GB  100GB   logical   ext4

(parted) rm
Partition number? 7

(parted) print
Model: Virtio Block Device (virtblk)
Disk /dev/vda: 322GB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End    Size    Type      File system  Flags
 1      1048kB  322GB  322GB   extended               boot
 6      212GB   222GB  10.0GB  logical   ext4
 5      222GB   322GB  100GB   logical   ext4

(parted) help mkpart
  mkpart PART-TYPE [FS-TYPE] START END     make a partition

PART-TYPE is one of: primary, logical, extended
        FS-TYPE is one of: zfs, btrfs, nilfs2, ext4, ext3, ext2, fat32, fat16, hfsx, hfs+, hfs, jfs, swsusp, linux-swap(v1),
        linux-swap(v0), ntfs, reiserfs, freebsd-ufs, hp-ufs, sun-ufs, xfs, apfs2, apfs1, asfs, amufs5, amufs4, amufs3, amufs2, amufs1,
        amufs0, amufs, affs7, affs6, affs5, affs4, affs3, affs2, affs1, affs0, linux-swap, linux-swap(new), linux-swap(old)
        START and END are disk locations, such as 4GB or 10%.  Negative values count from the end of the disk.  For example, -1s
        specifies exactly the last sector.

        'mkpart' makes a partition without creating a new file system on the partition.  FS-TYPE may be specified to set an appropriate
        partition ID.

(parted) mkpart
Partition type?  primary/logical? logical
File system type?  [ext2]? linux-swap
Start? 1049kB
End? 212GB

(parted) print
Model: Virtio Block Device (virtblk)
Disk /dev/vda: 322GB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End    Size    Type      File system     Flags
 1      1048kB  322GB  322GB   extended                  boot
 7      1049kB  212GB  212GB   logical   linux-swap(v1)  lba
 6      212GB   222GB  10.0GB  logical   ext4
 5      222GB   322GB  100GB   logical   ext4

(parted) set
Partition number? 7
Flag to Invert? lba
New state?  on/[off]? off

(parted) print
Model: Virtio Block Device (virtblk)
Disk /dev/vda: 322GB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End    Size    Type      File system     Flags
 1      1048kB  322GB  322GB   extended                  boot
 7      1049kB  212GB  212GB   logical   linux-swap(v1)
 6      212GB   222GB  10.0GB  logical   ext4
 5      222GB   322GB  100GB   logical   ext4

(parted) quit
Information: You may need to update /etc/fstab.

bistel@BIStelResearchDev-NN:~$ sudo partprobe
```

# check partition
```{bash}
bistel@BIStelResearchDev-NN:~$ sudo parted -l
Model: Virtio Block Device (virtblk)
Disk /dev/vda: 322GB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End    Size    Type      File system     Flags
 1      1048kB  322GB  322GB   extended                  boot
 7      1049kB  212GB  212GB   logical   linux-swap(v1)
 6      212GB   222GB  10.0GB  logical   ext4
 5      222GB   322GB  100GB   logical   ext4


Model: Virtio Block Device (virtblk)
Disk /dev/vdb: 859GB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End    Size   Type      File system  Flags
 1      1048kB  859GB  859GB  extended
 6      1049kB  659GB  659GB  logical   ext4
 5      659GB   859GB  200GB  logical   ext4
```

# make swap and swapon
```{bash}
bistel@BIStelResearchDev-NN:~$ sudo mkswap /dev/vda7
Setting up swapspace version 1, size = 190 GiB (204010942464 bytes)
no label, UUID=37cbb0f8-6b4f-480c-86d0-a054cc5b3342

bistel@BIStelResearchDev-NN:~$ sudo swapon /dev/vda7
bistel@BIStelResearchDev-NN:~$ sudo swapon -s
Filename                Type        Size    Used    Priority
/dev/vda7                                  partition    199229436    0    -1
```

# register on /etc/fstab for permanent use
```{bash}
bistel@BIStelResearchDev-NN:~$ sudo blkid | grep vda7
    /dev/vda7: UUID="3aadae39-913e-4783-80b8-902ff4cb654d" TYPE="swap" PARTUUID="5d53dc53-07"

bistel@BIStelResearchDev-NN:~$ sudo vi /etc/fstab
bistel@BIStelResearchDev-NN:~$ sudo cat /etc/fstab | grep swap
# swap was on /dev/vda7 during installation
UUID=3aadae39-913e-4783-80b8-902ff4cb654d none            swap    sw              0       0
```
