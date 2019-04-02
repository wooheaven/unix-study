```{bash}
set autoread
set tabstop=4
syntax on

" Colors
colorscheme molokai

" filetype indent on

" Line Number
let @n=':set nu! nu?'
set nu

" Move line Up and Down
nmap <S-k> :m .-2<CR>
nmap <S-j> :m .+1<CR>

" GitLab Commit Message "
let @c='4Gdwdwdwi#^[o```^[:7,$s/^;\t//^M:$,$s/^;/```/^M'

" GitLab Renamed list by git status
let @r=':1,$s/^\trenamed:    //'

" View White Characters or not
let @l=':set list! list?'

" TAB to 4spaces
let @t=':s/\t/    /g'

" Python 
autocmd FileType python exec 'setlocal expandtab ts=4 sw=4 ai nu list'

" html
autocmd FileType html exec 'setlocal ts=2 sts=2 sw=2 expandtab nu list'

" javascript
autocmd FileType javascript  exec 'setlocal ts=2 sts=2 sw=2 expandtab nu list'

" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

" NERD tree shortcut
nmap <F3> :NERDTreeToggle<CR>
```
