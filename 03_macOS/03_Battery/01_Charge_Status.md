```{zsh}
$ while (true)
while> do
while> sleep 3;
while> echo `date`" = "`ioreg -l | awk '$3~/Capacity/{c[$3]=$5}END{OFMT="%.3f";max=c["\"MaxCapacity\""];print(max>0?100*c["\"CurrentCapacity\""]/max:"?")}'`" %"
while> done
2017년 8월 18일 금요일 13시 57분 50초 KST = 99.332 %
2017년 8월 18일 금요일 13시 57분 53초 KST = 99.332 %
...
```
