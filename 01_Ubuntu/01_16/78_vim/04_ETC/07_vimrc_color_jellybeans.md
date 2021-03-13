# install jellybeans.vim by vundle
```{bash}
$ vi ~/.vimrc
" Colors
colorscheme jellybeans

" vundle
call vundle#begin()
Plugin 'nanotech/jellybeans.vim'
call vundle#end()

:PluginInstall

$ cd ~/.vim
$ cp bundle/jellybeans.vim/colors/jellybeans.vim ./colors/
```
