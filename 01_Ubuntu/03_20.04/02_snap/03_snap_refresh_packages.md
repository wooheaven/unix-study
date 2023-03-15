# refresh packages
```{bash}
$ sudo snap refresh --list
Name                     Version   Rev  Size  Publisher   Notes
intellij-idea-community  2022.3.3  421  1GB   jetbrains✓  classic

```

# remove old packages
```{bash}
$ sudo snap list --all | awk '/disabled/{print $1" --revision "$3}' | xargs -rn3 sudo snap remove
intellij-idea-community (revision 409) removed
```

# refresh packages
```{bash}
$ sudo snap refresh --list
All snaps up to date.
```
