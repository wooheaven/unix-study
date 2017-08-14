```{bash}
$ vi test.txt
<esc> qm (recording) q

$ vi ~/.vimrc
<insert> ...
<insert> let @m='(Ctrl-R Ctrl-R m)'
<esc> :wq

$ vi ~/test.txt
<esc> :reg m
<esc> @m
```
