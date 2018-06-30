# rsync and md5sum file on cluster by pssh
```{bash}
$ vi cluster_rsync_file.sh
#!/bin/bash

if [ -f $1 ]; then
FILE=$1
for NODE in $(cat cluster-slaves.txt); do
parallel-rsync -H $NODE $FILE $FILE
parallel-ssh -H $NODE -l hadoop -i md5sum $FILE
done
fi
```

```{bash}
$ cat cluster-slaves.txt
BIStelResearchDev-SM
BIStelResearchDev-DN01
BIStelResearchDev-DN02
BIStelResearchDev-DN03
BIStelResearchDev-DN04
BIStelResearchDev-DN05
BIStelResearchDev-DN06
BIStelResearchDev-DN07
BIStelResearchDev-DN08
BIStelResearchDev-DN09
BIStelResearchDev-DN10
BIStelResearchDev-DN11
BIStelResearchDev-DN12

$ chmod +x cluster_rsync_file.sh

$ md5sum /home/hadoop/.profile
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile

$ ./cluster_rsync_file.sh /home/hadoop/.profile
[1] 21:08:09 [SUCCESS] BIStelResearchDev-SM
[1] 21:08:10 [SUCCESS] BIStelResearchDev-SM
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
[1] 21:08:10 [SUCCESS] BIStelResearchDev-DN01
[1] 21:08:10 [SUCCESS] BIStelResearchDev-DN01
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
[1] 21:08:11 [SUCCESS] BIStelResearchDev-DN02
[1] 21:08:11 [SUCCESS] BIStelResearchDev-DN02
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
[1] 21:08:12 [SUCCESS] BIStelResearchDev-DN03
[1] 21:08:12 [SUCCESS] BIStelResearchDev-DN03
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
[1] 21:08:13 [SUCCESS] BIStelResearchDev-DN04
[1] 21:08:13 [SUCCESS] BIStelResearchDev-DN04
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
[1] 21:08:13 [SUCCESS] BIStelResearchDev-DN05
[1] 21:08:14 [SUCCESS] BIStelResearchDev-DN05
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
[1] 21:08:14 [SUCCESS] BIStelResearchDev-DN06
[1] 21:08:15 [SUCCESS] BIStelResearchDev-DN06
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
[1] 21:08:15 [SUCCESS] BIStelResearchDev-DN07
[1] 21:08:16 [SUCCESS] BIStelResearchDev-DN07
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
[1] 21:08:16 [SUCCESS] BIStelResearchDev-DN08
[1] 21:08:16 [SUCCESS] BIStelResearchDev-DN08
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
[1] 21:08:17 [SUCCESS] BIStelResearchDev-DN09
[1] 21:08:17 [SUCCESS] BIStelResearchDev-DN09
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
[1] 21:08:18 [SUCCESS] BIStelResearchDev-DN10
[1] 21:08:18 [SUCCESS] BIStelResearchDev-DN10
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
[1] 21:08:19 [SUCCESS] BIStelResearchDev-DN11
[1] 21:08:19 [SUCCESS] BIStelResearchDev-DN11
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
[1] 21:08:19 [SUCCESS] BIStelResearchDev-DN12
[1] 21:08:20 [SUCCESS] BIStelResearchDev-DN12
12771811d9120ed72e0661c4cd66947c  /home/hadoop/.profile
```
