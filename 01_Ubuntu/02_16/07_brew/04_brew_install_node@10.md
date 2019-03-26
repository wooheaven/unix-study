```bash
$ brew install node@10
...
==> node@10
node@10 is keg-only, which means it was not symlinked into /home/linuxbrew/.linuxbrew,
because this is an alternate version of another formula.

If you need to have node@10 first in your PATH run:
  echo 'export PATH="/home/linuxbrew/.linuxbrew/opt/node@10/bin:$PATH"' >> ~/.bash_profile

For compilers to find node@10 you may need to set:
  export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/node@10/lib"
  export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/node@10/include"

$ vi ~/.bashrc
...
# brew node
export PATH="$PATH:/home/linuxbrew/.linuxbrew/opt/node@10/bin"

$ which node
/home/linuxbrew/.linuxbrew/opt/node@10/bin/node

$ node -v
v10.15.2

$ which npm
/home/linuxbrew/.linuxbrew/opt/node@10/bin/npm

$ npm -v
6.4.1
```
