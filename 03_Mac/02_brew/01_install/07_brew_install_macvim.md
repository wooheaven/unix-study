# before vim
```{bash}
$ which vim
/usr/bin/vim

$ ll /usr/bin/vim
-rwxr-xr-x  1 root  wheel   1.7M Apr 29  2017 /usr/bin/vim*

$ vi --version
VIM - Vi IMproved 7.4 (2013 Aug 10, compiled Apr  4 2017 18:14:54)
Included patches: 1-898, 8056
Compiled by root@apple.com
Normal version without GUI.  Features included (+) or not (-):
+acl             -farsi           -mouse_netterm   +syntax
-arabic          +file_in_path    -mouse_sgr       +tag_binary
+autocmd         +find_in_path    -mouse_sysmouse  +tag_old_static
-balloon_eval    +float           -mouse_urxvt     -tag_any_white
-browse          +folding         +mouse_xterm     -tcl
+builtin_terms   -footer          +multi_byte      +terminfo
+byte_offset     +fork()          +multi_lang      +termresponse
+cindent         -gettext         -mzscheme        +textobjects
-clientserver    -hangul_input    +netbeans_intg   +title
-clipboard       +iconv           +path_extra      -toolbar
+cmdline_compl   +insert_expand   -perl            +user_commands
+cmdline_hist    +jumplist        +persistent_undo +vertsplit
+cmdline_info    -keymap          +postscript      +virtualedit
+comments        -langmap         +printer         +visual
-conceal         +libcall         -profile         +visualextra
+cryptv          +linebreak       +python/dyn      +viminfo
+cscope          +lispindent      -python3         +vreplace
+cursorbind      +listcmds        +quickfix        +wildignore
+cursorshape     +localmap        +reltime         +wildmenu
+dialog_con      -lua             -rightleft       +windows
+diff            +menu            +ruby/dyn        +writebackup
+digraphs        +mksession       +scrollbind      -X11
-dnd             +modify_fname    +signs           -xfontset
-ebcdic          +mouse           +smartindent     -xim
-emacs_tags      -mouseshape      -sniff           -xsmp
+eval            -mouse_dec       +startuptime     -xterm_clipboard
+ex_extra        -mouse_gpm       +statusline      -xterm_save
+extra_search    -mouse_jsbterm   -sun_workshop    -xpm
   system vimrc file: "$VIM/vimrc"
     user vimrc file: "$HOME/.vimrc"
 2nd user vimrc file: "~/.vim/vimrc"
      user exrc file: "$HOME/.exrc"
  fall-back for $VIM: "/usr/share/vim"
Compilation: gcc -c -I. -Iproto -DHAVE_CONFIG_H     -g -O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1
Linking: gcc   -L/usr/local/lib -o vim        -lm -lncurses  -liconv
```

# brew install macvim
```{bash}
$ brew install macvim
Updating Homebrew...
==> Auto-updated Homebrew!
Updated 2 taps (homebrew/cask and homebrew/core).
==> Updated Formulae
harfbuzz ✔              caddy                   cockroach               embulk                  flake8                  google-java-format      ipython                 libtermkey              lynis                   postgresql              spatialindex
imagemagick ✔           cassandra               convox                  eslint                  fwup                    gradle-completion       kibana                  links                   macvim                  psql2csv                topgrade
bettercap               checkbashisms           eiffelstudio            fish                    gmsh                    groonga                 libpqxx                 logstash                nnn                     rgbds                   vim

==> Installing dependencies for macvim: cscope, lua, sqlite and python
==> Installing macvim dependency: cscope
==> Downloading https://homebrew.bintray.com/bottles/cscope-15.8b.sierra.bottle.tar.gz
######################################################################## 100.0%
==> Pouring cscope-15.8b.sierra.bottle.tar.gz
🍺  /usr/local/Cellar/cscope/15.8b: 10 files, 714.2KB
==> Installing macvim dependency: lua
==> Downloading https://homebrew.bintray.com/bottles/lua-5.3.5_1.sierra.bottle.tar.gz
######################################################################## 100.0%
==> Pouring lua-5.3.5_1.sierra.bottle.tar.gz
==> Caveats
You may also want luarocks:
  brew install luarocks
==> Summary
🍺  /usr/local/Cellar/lua/5.3.5_1: 28 files, 274.7KB
==> Installing macvim dependency: sqlite
==> Downloading https://homebrew.bintray.com/bottles/sqlite-3.27.1.sierra.bottle.tar.gz
######################################################################## 100.0%
==> Pouring sqlite-3.27.1.sierra.bottle.tar.gz
==> Caveats
sqlite is keg-only, which means it was not symlinked into /usr/local,
because macOS provides an older sqlite3.

If you need to have sqlite first in your PATH run:
  echo 'export PATH="/usr/local/opt/sqlite/bin:$PATH"' >> ~/.zshrc

For compilers to find sqlite you may need to set:
  export LDFLAGS="-L/usr/local/opt/sqlite/lib"
  export CPPFLAGS="-I/usr/local/opt/sqlite/include"

For pkg-config to find sqlite you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

==> Summary
🍺  /usr/local/Cellar/sqlite/3.27.1: 11 files, 3.7MB
==> Installing macvim dependency: python
==> Downloading https://homebrew.bintray.com/bottles/python-3.7.2_2.sierra.bottle.tar.gz
######################################################################## 100.0%
==> Pouring python-3.7.2_2.sierra.bottle.tar.gz
Error: The `brew link` step did not complete successfully
The formula built, but is not symlinked into /usr/local
Could not symlink bin/2to3
Target /usr/local/bin/2to3
already exists. You may want to remove it:
  rm '/usr/local/bin/2to3'

To force the link and overwrite all conflicting files:
  brew link --overwrite python

To list all files that would be deleted:
  brew link --overwrite --dry-run python

Possible conflicting files are:
/usr/local/bin/2to3 -> /Library/Frameworks/Python.framework/Versions/3.6/bin/2to3
/usr/local/bin/idle3 -> /Library/Frameworks/Python.framework/Versions/3.6/bin/idle3
/usr/local/bin/pydoc3 -> /Library/Frameworks/Python.framework/Versions/3.6/bin/pydoc3
/usr/local/bin/python3 -> /Library/Frameworks/Python.framework/Versions/3.6/bin/python3
/usr/local/bin/python3-config -> /Library/Frameworks/Python.framework/Versions/3.6/bin/python3-config
/usr/local/bin/pyvenv -> /Library/Frameworks/Python.framework/Versions/3.6/bin/pyvenv
==> /usr/local/Cellar/python/3.7.2_2/bin/python3 -s setup.py --no-user-cfg install --force --verbose --install-scripts=/usr/local/Cellar/python/3.7.2_2/bin --install-lib=/usr/local/lib/python3.7/site-packages --single-version-externally-managed --record=installed.txt
==> /usr/local/Cellar/python/3.7.2_2/bin/python3 -s setup.py --no-user-cfg install --force --verbose --install-scripts=/usr/local/Cellar/python/3.7.2_2/bin --install-lib=/usr/local/lib/python3.7/site-packages --single-version-externally-managed --record=installed.txt
==> /usr/local/Cellar/python/3.7.2_2/bin/python3 -s setup.py --no-user-cfg install --force --verbose --install-scripts=/usr/local/Cellar/python/3.7.2_2/bin --install-lib=/usr/local/lib/python3.7/site-packages --single-version-externally-managed --record=installed.txt
==> Caveats
Python has been installed as
  /usr/local/bin/python3

Unversioned symlinks `python`, `python-config`, `pip` etc. pointing to
`python3`, `python3-config`, `pip3` etc., respectively, have been installed into
  /usr/local/opt/python/libexec/bin

If you need Homebrew's Python 2.7 run
  brew install python@2

You can install Python packages with
  pip3 install <package>
They will install into the site-package directory
  /usr/local/lib/python3.7/site-packages

See: https://docs.brew.sh/Homebrew-and-Python
==> Summary
🍺  /usr/local/Cellar/python/3.7.2_2: 3,861 files, 59.7MB
==> Installing macvim
==> Downloading https://homebrew.bintray.com/bottles/macvim-8.1-155.sierra.bottle.tar.gz
######################################################################## 100.0%
==> Pouring macvim-8.1-155.sierra.bottle.tar.gz
🍺  /usr/local/Cellar/macvim/8.1-155: 2,206 files, 35.3MB
==> Caveats
==> lua
You may also want luarocks:
  brew install luarocks
==> sqlite
sqlite is keg-only, which means it was not symlinked into /usr/local,
because macOS provides an older sqlite3.

If you need to have sqlite first in your PATH run:
  echo 'export PATH="/usr/local/opt/sqlite/bin:$PATH"' >> ~/.zshrc

For compilers to find sqlite you may need to set:
  export LDFLAGS="-L/usr/local/opt/sqlite/lib"
  export CPPFLAGS="-I/usr/local/opt/sqlite/include"

For pkg-config to find sqlite you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

==> python
Python has been installed as
  /usr/local/bin/python3

Unversioned symlinks `python`, `python-config`, `pip` etc. pointing to
`python3`, `python3-config`, `pip3` etc., respectively, have been installed into
  /usr/local/opt/python/libexec/bin

If you need Homebrew's Python 2.7 run
  brew install python@2

You can install Python packages with
  pip3 install <package>
They will install into the site-package directory
  /usr/local/lib/python3.7/site-packages

See: https://docs.brew.sh/Homebrew-and-Python

$ brew cleanup
```

# after vim
```{bash}
$ which vim
/usr/local/bin/vim

$ vim --version
VIM - Vi IMproved 8.1 (2018 May 18, compiled Feb 19 2019 12:07:42)
macOS version
Included patches: 1-950
Compiled by Homebrew
Huge version with MacVim GUI.  Features included (+) or not (-):
+acl               -farsi             +mouse_sgr         -tag_any_white
+arabic            +file_in_path      -mouse_sysmouse    +tcl
+autocmd           +find_in_path      +mouse_urxvt       +termguicolors
+autochdir         +float             +mouse_xterm       +terminal
-autoservername    +folding           +multi_byte        +terminfo
+balloon_eval      -footer            +multi_lang        +termresponse
+balloon_eval_term +fork()            -mzscheme          +textobjects
+browse            +fullscreen        +netbeans_intg     +textprop
++builtin_terms    -gettext           +num64             +timers
+byte_offset       -hangul_input      +odbeditor         +title
+channel           +iconv             +packages          +toolbar
+cindent           +insert_expand     +path_extra        +transparency
+clientserver      +job               +perl              +user_commands
+clipboard         +jumplist          +persistent_undo   +vartabs
+cmdline_compl     +keymap            +postscript        +vertsplit
+cmdline_hist      +lambda            +printer           +virtualedit
+cmdline_info      +langmap           +profile           +visual
+comments          +libcall           -python            +visualextra
+conceal           +linebreak         +python3           +viminfo
+cryptv            +lispindent        +quickfix          +vreplace
+cscope            +listcmds          +reltime           +wildignore
+cursorbind        +localmap          +rightleft         +wildmenu
+cursorshape       +lua               +ruby              +windows
+dialog_con_gui    +menu              +scrollbind        +writebackup
+diff              +mksession         +signs             -X11
+digraphs          +modify_fname      +smartindent       -xfontset
+dnd               +mouse             +startuptime       +xim
-ebcdic            +mouseshape        +statusline        -xpm
+emacs_tags        +mouse_dec         -sun_workshop      -xsmp
+eval              -mouse_gpm         +syntax            -xterm_clipboard
+ex_extra          -mouse_jsbterm     +tag_binary        -xterm_save
+extra_search      +mouse_netterm     +tag_old_static
   system vimrc file: "$VIM/vimrc"
     user vimrc file: "$HOME/.vimrc"
 2nd user vimrc file: "~/.vim/vimrc"
      user exrc file: "$HOME/.exrc"
  system gvimrc file: "$VIM/gvimrc"
    user gvimrc file: "$HOME/.gvimrc"
2nd user gvimrc file: "~/.vim/gvimrc"
       defaults file: "$VIMRUNTIME/defaults.vim"
    system menu file: "$VIMRUNTIME/menu.vim"
  fall-back for $VIM: "/Applications/MacVim.app/Contents/Resources/vim"
Compilation: clang -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_MACVIM -Wall -Wno-unknown-pragmas -pipe  -DMACOS_X -DMACOS_X_DARWIN  -g -O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1
Linking: clang   -L.             -L /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.Internal.sdk/usr/local/libressl/lib -L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.Internal.sdk/usr/local/lib -L.             -L /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.Internal.sdk/usr/local/libressl/lib -L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.Internal.sdk/usr/local/lib  -L/usr/local/lib -o Vim -framework Cocoa -framework Carbon       -lm  -lncurses -liconv -framework AppKit  -L/usr/local/opt/lua/lib -llua5.3 -fstack-protector  -L/System/Library/Perl/5.18/darwin-thread-multi-2level/CORE -lperl  -L/usr/local/opt/python/Frameworks/Python.framework/Versions/3.7/lib/python3.7/config-3.7m-darwin -lpython3.7m -framework CoreFoundation -F/System/Library/Frameworks -framework Tcl -framework CoreFoundation -framework Ruby
```
