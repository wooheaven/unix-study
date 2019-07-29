# sar CPU
```
[root@localhost ~]# sar -u
Linux 2.6.32-573.el6.x86_64 (sk.dso.hdm) 	05/25/2016 	_x86_64_	(4 CPU)

05:30:01 PM     CPU     %user     %nice   %system   %iowait    %steal     %idle
05:40:01 PM     all      0.09      0.00      0.07      0.02      0.00     99.81
05:50:01 PM     all      0.20      0.00      0.07      0.03      0.00     99.69
06:00:01 PM     all      0.09      0.00      0.07      0.03      0.00     99.81
06:10:01 PM     all      0.29      0.00      0.13      0.04      0.00     99.54
Average:        all      0.17      0.00      0.09      0.03      0.00     99.71

# options

%user: This shows the aggregate time that the processor is spending on different process.
%sys: This shows the percentage of time spend by the processor for working system task.
%iowait: The name iowait itself recommends that its the time spend by processor waiting for devices.
%nice: This table shows the time spend by CPU for procedure whose nice value has been changed.
%steal: This column shows the amount to time spend by a CPU.
%idle: This suggests the idle time spend by the processor.
```

# sample
```	
# Displays real time CPU usage every 1 second for 3 times.
sar -u 1 3

# Same as “sar -u” but displays additional fields.
sar -u ALL

# Same as “sar -u 1 3″ but displays additional fields.
sar -u ALL 1 3

# Displays CPU usage for the 10day of the month from the sa10 file.
sar -u -f /var/log/sa/sa10
```
