```
$ sudo snap list --all
Name                     Version   Rev    Tracking       Publisher   Notes
core18                   20230118  2679   latest/stable  canonical✓  base,disabled
core18                   20230207  2697   latest/stable  canonical✓  base
intellij-idea-community  2022.3.2  409    latest/stable  jetbrains✓  classic
pycharm-community        2022.3.2  315    latest/stable  jetbrains✓  classic
snapd                    2.58      17950  latest/stable  canonical✓  snapd,disabled
snapd                    2.58.2    18357  latest/stable  canonical✓  snapd

$ sudo snap list --all | awk '/disabled/{print $1" --revision "$3}' 
core18 --revision 2679
snapd --revision 17950

# sudo snap remove core18 --revision 2679
# sudo snap remove snapd --revision 17950
$ sudo snap list --all | awk '/disabled/{print $1" --revision "$3}' | xargs -rn3 sudo snap remove
core18 (revision 2679) removed
snapd (revision 17950) removed

$ sudo snap list --all
Name                     Version   Rev    Tracking       Publisher   Notes
core18                   20230207  2697   latest/stable  canonical✓  base
intellij-idea-community  2022.3.2  409    latest/stable  jetbrains✓  classic
pycharm-community        2022.3.2  315    latest/stable  jetbrains✓  classic
snapd                    2.58.2    18357  latest/stable  canonical✓  snapd
```
