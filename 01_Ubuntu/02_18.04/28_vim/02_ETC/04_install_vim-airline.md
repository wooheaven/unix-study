# install vim-airline by vim-plug
```{bash}
$ vi ~/.vimrc
...
" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

call plug#end()

" vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
set laststatus=2 " turn on bottom bar
nmap <F3> :bp<CR>
nmap <F4> :bn<CR>
...

:PlugInstall
```
