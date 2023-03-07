# install vim-plug
```
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# configure vim-plug
```
$ cat ~/.vimrc
...
".vim-plug
call plug#begin('~/.vim/plugged')

call plug#end()
...
```
