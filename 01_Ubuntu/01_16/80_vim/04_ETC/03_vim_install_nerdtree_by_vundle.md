# install bundle nerdtree by vundle
```{bash}
$ vi ~/.vimrc
...
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

" NERD tree shortcut
nmap <F3> :NERDTreeToggle<CR>
...

:PluginInstall
```
