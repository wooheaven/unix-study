# Install SAR
```
[user@local ~]$ su -
[root@local ~]# yum -y install sysstat
[root@local ~]# sar -V
sysstat version 9.0.4
(C) Sebastien Godard (sysstat <at> orange.fr)
```

# Check sar of cron job
```
[root@local ~]# cat /etc/cron.d/sysstat
# Run system activity accounting tool every 10 minutes
*/10 * * * * root /usr/lib64/sa/sa1 1 1
# 0 * * * * root /usr/lib64/sa/sa1 600 6 &
# Generate a daily summary of process accounting at 23:53
53 23 * * * root /usr/lib64/sa/sa2 -A
```

# Check sar config 
```
[root@local ~]# cat /etc/sysconfig/sysstat
# sysstat-9.0.4 configuration file.

# How long to keep log files (in days).
# If value is greater than 28, then log files are kept in
# multiple directories, one for each month.
HISTORY=28

# Compress (using gzip or bzip2) sa and sar files older than (in days):
COMPRESSAFTER=31

# Parameters for the system activity data collector (see sadc manual page)
# which are used for the generation of log files.
SADC_OPTIONS="-S DISK"

# Compression program to use.
ZIP="bzip2"
```
 
# Check sar log
```
[root@local ~]# ls -l /var/log/sa
total 4
-rw-r--r-- 1 root root 3096 May 25 17:30 sa25
```
