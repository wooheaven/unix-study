# install jenv by brew
```{bash}
$ brew install jenv
```

# configure ~/.bashrc
```
$ echo 'eval "$(jenv init -)"' >> ~/.bashrc
$ exec $SHELL -l

$ vi ~/.bashrc
...
#.jenv$
export.PATH="$PATH:$HOME/.jenv/bin"$
eval."$(jenv.init.-)"$
```
