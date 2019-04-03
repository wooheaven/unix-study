# install vim bundle vundle
```{bash}
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

$ vi ~/.vimrc
...
" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

:wq
```

# cmd of vundle
```{text}
:PluginList
:PluginInstall
:PluginSearch
:PluginClean
```
