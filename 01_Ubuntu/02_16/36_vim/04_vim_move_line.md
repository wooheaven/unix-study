# ref
```
http://vim.wikia.com/wiki/Moving_lines_up_or_down
```

# move current line to after line2 on vim ESC-mode
```
:m 2
```

# move current line to down on vim ESC-mode
```
:m .+1
```

# move current line to up on vim ESC-mode
```
:m .-2
```

# add on ~/.vimrc
```{bash}
tail -5 ~/.vimrc
" Move Current Line Up
'et @u=':m .-2

" Move Current Line Down
'et @d=':m .+1
```
