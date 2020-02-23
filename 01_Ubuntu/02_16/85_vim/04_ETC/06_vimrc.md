# cat ~/.vimrc
```{bash}
set autoread
set ts=4
syntax on

" Colors
colorscheme jellybeans

" Line Number
let @n=':set nu! nu?'
set nu

" GitLab Commit Message
nnoremap.@c.<Esc>:5,5s/;.On.branch./#/<Enter>o```<Esc>:10,$s/;\t//<Enter><Esc>:$,$s/;/```/<Enter><Esc>$

" encoding
set encoding=utf8

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
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" NERD tree shortcut
nmap <F3> :NERDTreeToggle<CR>

" BackSpace Key 
set backspace=indent,eol,start

" set listchars
set listchars=eol:$,tab:<->,space:.,trail:~,extends:>,precedes:<
```
