# memory info
```{bash}
$ cat /proc/meminfo 
$ free -m
```

# real
```{bash}
$ cat /proc/meminfo 
MemTotal:       16212584 kB
MemFree:        10442884 kB
MemAvailable:   12129200 kB
Buffers:          222628 kB
Cached:          2513344 kB
SwapCached:            0 kB
Active:          3367508 kB
Inactive:        1870220 kB
Active(anon):    2505604 kB
Inactive(anon):   912624 kB
Active(file):     861904 kB
Inactive(file):   957596 kB
Unevictable:          64 kB
Mlocked:              64 kB
SwapTotal:        999420 kB
SwapFree:         999420 kB
Dirty:              6244 kB
Writeback:             0 kB
AnonPages:       2501860 kB
Mapped:           763384 kB
Shmem:            916480 kB
Slab:             337000 kB
SReclaimable:     207324 kB
SUnreclaim:       129676 kB
KernelStack:       17856 kB
PageTables:        72624 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     9105712 kB
Committed_AS:   12067644 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
HardwareCorrupted:     0 kB
AnonHugePages:         0 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
CmaTotal:              0 kB
CmaFree:               0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
DirectMap4k:      352512 kB
DirectMap2M:     7823360 kB
DirectMap1G:     8388608 kB

$ free -m
              total        used        free      shared  buff/cache   available
Mem:          15832        2633       10198         894        3000       11845
Swap:           975           0         975
```
