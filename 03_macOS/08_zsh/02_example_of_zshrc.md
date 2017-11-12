```{bash}
$ tail -2 ~/.zshrc
# source ~/.bashrc
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

$ cat ~/.bashrc
# alias
alias ll='ls -lhvGF'
alias lla='ls -lhavGF'
alias lf='find "`pwd`" -name "*" -exec echo {} \;'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Python 3.5 Environment
# The orginal version is saved in .bash_profile.pysave
PATH="${PATH}:/Library/Frameworks/Python.framework/Versions/3.5/bin"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# Spring CLI
export SPRING_HOME="/usr/local/Cellar/springboot/1.5.4.RELEASE"
export PATH="$PATH:$SPRING_HOME/bin"

# Anaconda3 Env
export CONDA_HOME="/Users/rwoo/anaconda"
export PATH="$PATH:$CONDA_HOME/bin"
```
