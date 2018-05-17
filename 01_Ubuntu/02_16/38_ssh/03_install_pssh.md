# install pssh on ubuntu
```{bash}
$ sudo apt-get install pssh
```

# use pssh
```{bash}
$ parallel-ssh -h cluster_all_hosts.txt -i 'jps'
$ parallel-ssh -H NameNode -i 'jps'
```
