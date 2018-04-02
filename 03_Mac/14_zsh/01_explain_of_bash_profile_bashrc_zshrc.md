#.bash_profile
```{text}
.bash_profile : it is executed to configure shell before the initial command prompt with login-shell
                When you login (type username and password) via console, 
                either sitting at the machine, or remotely via ssh
                this file (~/.bash_profile) is executed to configure your shell before the initial command prompt.
```
#.bashrc
```{text}
.bashrc       : it is executed to configure shell before the window command prompt with non-login-shell
                if you’ve already logged into your machine and open a new terminal window (xterm) inside Gnome or KDE, 
                then this file (~/.bashrc) is executed before the window command prompt. 
                Also this file .bashrc is executed when you start a new bash instance by typing /bin/bash in a terminal.
```
#.zshrc
```{text}
.zshrc        : it is executed to configure shell before with login/non-login shell.
```
