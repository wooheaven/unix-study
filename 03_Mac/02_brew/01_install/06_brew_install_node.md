```bash
$ brew install node@10
...
node@10 is keg-only, which means it was not symlinked into /usr/local,
because this is an alternate version of another formula.

If you need to have node@10 first in your PATH run:
  echo 'export PATH="/usr/local/opt/node@10/bin:$PATH"' >> ~/.zshrc

For compilers to find node@10 you may need to set:
  export LDFLAGS="-L/usr/local/opt/node@10/lib"
  export CPPFLAGS="-I/usr/local/opt/node@10/include"

$ vi ~/.bashrc
# Node.js PATH
export NODE_HOME=/usr/local/opt/node@10
export PATH=$PATH:$NODE_HOME/bin

$ source ~/.bashrc # or re-open terminal

$ which node
/usr/local/opt/node@10/bin/node

$ node -v
v10.15.2

$ which npm
/usr/local/opt/node@10/bin/npm

$ npm -v
6.4.1
```
