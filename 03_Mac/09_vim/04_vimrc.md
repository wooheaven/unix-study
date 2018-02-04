```{bash}
set autoread
set ts=4
syntax on
colorscheme molokai
" filetype indent on

" Line Number
let @n=':set nu! nu?'

" GitLab Commit Message
let @c='4Gdwdwdwi#:8,$s/^;\t//'

" GitLab Renamed list by git status
let @r=':1,$s/    renamed:    //'

" View White Characters or not
let @l=':set list! list?'

" TAB to 4spaces
let @t=':s/\t/    /g'

" Python 
autocmd FileType python exec 'setlocal expandtab ts=4 sw=4 ai nu list'

" Move Current Line Up
let @u=':m .-2'

" Move Current Line Down
let @d=':m .+1'
```
