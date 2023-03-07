# install nerdtree by vim-plug
```{bash}
$ vi ~/.vimrc
...
" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

call plug#end()

" NERD tree shortcut
nmap <F2> :NERDTreeToggle<CR>
...

:PlugInstall
```
