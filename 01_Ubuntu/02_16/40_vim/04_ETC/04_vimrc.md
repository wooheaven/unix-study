# cat ~/.vimrc
```
" Colors
color molokai

" Move line Up and Down
nmap <C-j> :m .+1<CR>
nmap <C-k> :m .-2<CR>

" GitLab Commit Message "
let @c=':1,1s/^/```/:1,$s/; On branch /#/:1,$s/;\t//:$,$s/;/```/'

" GitLab Renamed list by git status
let @r=':1,$s/\trenamed:    //'

" Line Number
let @n=':set nu! nu?'
set nu

" View White Characters or not
let @l=':set list! list?'

" TAB to 4spaces
let @t=':s/\t/    /g'

" Python
autocmd FileType python exec 'setlocal expandtab ts=4 sw=4 ai nu list'

set tabstop=4
```
