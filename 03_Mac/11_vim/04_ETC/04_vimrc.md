```{bash}
set autoread
set ts=4
syntax on
colorscheme molokai
" filetype indent on

" Line Number
let @n=':set nu! nu?'

" Move line Up and Down
nmap <C-j> :m .+1<CR>
nmap <C-k> :m .-2<CR>

" GitLab Commit Message "
let @c=':1,1s/^/```/:4,4s/; On branch /#/:1,$s/;\t//^M:$,$s/;/```/'

" GitLab Renamed list by git status
let @r=':1,$s/^\trenamed:    //'

" View White Characters or not
let @l=':set list! list?'

" TAB to 4spaces
let @t=':s/\t/    /g'

" Python 
autocmd FileType python exec 'setlocal expandtab ts=4 sw=4 ai nu list'
```
