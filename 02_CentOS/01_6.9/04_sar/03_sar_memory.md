# sar Free memory, Used memory
```
[root@localhost ~]# sar -r
Linux 2.6.32-573.el6.x86_64 (sk.dso.hdm) 	05/25/2016 	_x86_64_	(4 CPU)

05:30:01 PM kbmemfree kbmemused  %memused kbbuffers  kbcached  kbcommit   %commit
05:40:01 PM  13208920   3117056     19.09    316204    844792   2592008     10.55
05:50:01 PM  13201276   3124700     19.14    316204    844868   2592216     10.56
06:00:01 PM  13201912   3124064     19.14    316204    844940   2590676     10.55
06:10:01 PM  13948236   2377740     14.56    316204    633796   1971456      8.03
06:20:01 PM  13960372   2365604     14.49    316208    633820   1950004      7.94
Average:     13504143   2821833     17.28    316205    760443   2339272      9.53

# options
kbmemfree: Amount of free memory available in kilobytes.
kbmemused: Amount of used memory in kilobytes.
%memused: Percentage of used memory.
kbbuffers: Amount of memory used as buffers by the kernal in kilobytes.
kbcached: Amount of memory used to store information by the kernal in kilobytes.
kbcommit: Amount of memory in kilobytes required for current workload.
%commit: Percentage of memory required for current workload in connection to the total sum of memory (RAM+swap).

# sample
sar -r
sar -r 1 3
sar -r -f /var/log/sa/sa10
```

# sar Used Swap Space
```
[root@localhost ~]# sar -S
Linux 2.6.32-573.el6.x86_64 (sk.dso.hdm) 	05/25/2016 	_x86_64_	(4 CPU)

05:30:01 PM kbswpfree kbswpused  %swpused  kbswpcad   %swpcad
05:40:01 PM   8232792       164      0.00       164    100.00
05:50:01 PM   8232792       164      0.00       164    100.00
06:00:01 PM   8232792       164      0.00       164    100.00
06:10:01 PM   8232792       164      0.00       164    100.00
06:20:01 PM   8232792       164      0.00       164    100.00
Average:      8232792       164      0.00       164    100.00

# options
kbswpfree: Amount of free swap space in kilobytes.
kbswpused: Amount of used swap space in kilobytes.
%swpused: Percentage of used swap space.
kbswpcad: Amount of cached swap memory in kilobytes.
%swpcad: Percentage of cached swap memory in connection to the amount of utilized swap space.

# sample
sar -S
sar -S 1 3
sar -S -f /var/log/sa/sa15
```
