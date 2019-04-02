# cat ~/.vimrc
```
" Colors
color molokai

" Move line Up and Down
nmap <S-k> :m .-2<CR>
nmap <S-j> :m .+1<CR>

" GitLab Commit Message "
let @c='5Go```:5,5s/; On branch /#/:10,$s/;\t//:$,$s/;/```/'

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

" html
autocmd FileType html exec 'setlocal ts=2 sts=2 sw=2 expandtab nu list'

" javascript
autocmd FileType javascript  exec 'setlocal ts=2 sts=2 sw=2 expandtab nu list'

```
