# Mapping between [vim key] and [keyboard]
```
<BS>		Backspace
<Tab>		Tab
<CR>		Enter
<Enter>		Enter
<Return>	Enter

<Esc>		Escape
Ctrl V M	Escape

<Space>		Space

<Up>		Up arrow
<Down>		Down arrow
<Left>		Left arrow
<Right>		Right arrow

<F1> - <F12>	Function keys F1 to F12
#1, #2..#9,#0	Function keys F1 to F9, F10

<Insert>	Insert
<Del>		Delete
<Home>		Home
<End>		End
<PageUp>	Page-Up
<PageDown>	Page-Down
```

# Use above : non-recursive nomal mode key mapping on vimrc
```
$ cat ~/.vimrc
...
" git commit
let @c=':5,5s/;.On.branch./#/6Go```:9,$s/;\t//Go```'
...
```
