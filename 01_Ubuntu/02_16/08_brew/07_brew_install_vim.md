# install vim by brew
```bash
$ brew install vim

$ ll /home/linuxbrew/.linuxbrew/bin/vim
lrwxrwxrwx 1 ubuntu ubuntu 30  4월  3 12:22 /home/linuxbrew/.linuxbrew/bin/vim -> ../Cellar/vim/8.1.1050/bin/vim*

$ /home/linuxbrew/.linuxbrew/bin/vim --version
VIM - Vi IMproved 8.1 (2018 May 18, compiled Apr  3 2019 12:21:58)
Included patches: 1-1050
Compiled by Homebrew
Huge version without GUI.  Features included (+) or not (-):
+acl               +extra_search      +mouse_netterm     +tag_old_static
+arabic            -farsi             +mouse_sgr         -tag_any_white
+autocmd           +file_in_path      -mouse_sysmouse    -tcl
+autochdir         +find_in_path      +mouse_urxvt       +termguicolors
-autoservername    +float             +mouse_xterm       +terminal
-balloon_eval      +folding           +multi_byte        +terminfo
+balloon_eval_term -footer            +multi_lang        +termresponse
-browse            +fork()            -mzscheme          +textobjects
++builtin_terms    +gettext           +netbeans_intg     +textprop
+byte_offset       -hangul_input      +num64             +timers
+channel           +iconv             +packages          +title
+cindent           +insert_expand     +path_extra        -toolbar
-clientserver      +job               +perl              +user_commands
-clipboard         +jumplist          +persistent_undo   +vartabs
+cmdline_compl     +keymap            +postscript        +vertsplit
+cmdline_hist      +lambda            +printer           +virtualedit
+cmdline_info      +langmap           +profile           +visual
+comments          +libcall           -python            +visualextra
+conceal           +linebreak         +python3           +viminfo
+cryptv            +lispindent        +quickfix          +vreplace
+cscope            +listcmds          +reltime           +wildignore
+cursorbind        +localmap          +rightleft         +wildmenu
+cursorshape       -lua               +ruby              +windows
+dialog_con        +menu              +scrollbind        +writebackup
+diff              +mksession         +signs             -X11
+digraphs          +modify_fname      +smartindent       -xfontset
-dnd               +mouse             +startuptime       -xim
-ebcdic            -mouseshape        +statusline        -xpm
+emacs_tags        +mouse_dec         -sun_workshop      -xsmp
+eval              -mouse_gpm         +syntax            -xterm_clipboard
+ex_extra          -mouse_jsbterm     +tag_binary        -xterm_save
   system vimrc file: "$VIM/vimrc"
     user vimrc file: "$HOME/.vimrc"
 2nd user vimrc file: "~/.vim/vimrc"
      user exrc file: "$HOME/.exrc"
       defaults file: "$VIMRUNTIME/defaults.vim"
  fall-back for $VIM: "/home/linuxbrew/.linuxbrew/share/vim"
Compilation: gcc-5 -c -I. -Iproto -DHAVE_CONFIG_H     -g -O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1       
Linking: gcc-5   -L. -fstack-protector-strong -rdynamic -Wl,-export-dynamic -L/home/linuxbrew/.linuxbrew/opt/libyaml/lib  -Wl,-rpath,/home/linuxbrew/.linuxbrew/opt/libyaml/lib -L/home/linuxbrew/.linuxbrew/opt/openssl/lib  -Wl,-rpath,/home/linuxbrew/.linuxbrew/opt/openssl/lib -L/home/linuxbrew/.linuxbrew/opt/readline/lib  -Wl,-rpath,/home/linuxbrew/.linuxbrew/opt/readline/lib -Wl,-E -Wl,-rpath,/home/linuxbrew/.linuxbrew/Cellar/perl/5.28.1/lib/perl5/5.28.1/x86_64-linux-thread-multi/CORE   -L/usr/local/lib -Wl,--as-needed -o vim        -lm -lnsl   -lncurses -ldl   -Wl,-E -Wl,-rpath,/home/linuxbrew/.linuxbrew/Cellar/perl/5.28.1/lib/perl5/5.28.1/x86_64-linux-thread-multi/CORE  -fstack-protector-strong -L/usr/local/lib  -L/home/linuxbrew/.linuxbrew/Cellar/perl/5.28.1/lib/perl5/5.28.1/x86_64-linux-thread-multi/CORE -lperl -lpthread -lnsl -ldl -lm -lcrypt -lutil -lc  -L/home/linuxbrew/.linuxbrew/Cellar/python/3.7.3/lib/python3.7/config-3.7m-x86_64-linux-gnu -lpython3.7m -lcrypt -lpthread -ldl -lutil -lm  -Wl,-rpath,/home/linuxbrew/.linuxbrew/Cellar/ruby/2.6.2/lib -L/home/linuxbrew/.linuxbrew/Cellar/ruby/2.6.2/lib -lruby -lm
```

# update-alternatives vim vi
```bash
$ sudo update-alternatives --install /usr/bin/vim vim /home/linuxbrew/.linuxbrew/bin/vim 31
update-alternatives: using /home/linuxbrew/.linuxbrew/bin/vim to provide /usr/bin/vim (vim) in auto mode

$ sudo update-alternatives --config vim
There are 2 choices for the alternative vim (providing /usr/bin/vim).

  Selection    Path                                Priority   Status
------------------------------------------------------------
* 0            /home/linuxbrew/.linuxbrew/bin/vim   31        auto mode
  1            /home/linuxbrew/.linuxbrew/bin/vim   31        manual mode
  2            /usr/bin/vim.basic                   30        manual mode

Press <enter> to keep the current choice[*], or type selection number:

$ which vim
/usr/bin/vim

$ ll /usr/bin/vim
lrwxrwxrwx 1 root root 21  2월 18 16:55 /usr/bin/vim -> /etc/alternatives/vim*

$ ll /etc/alternatives/vim
lrwxrwxrwx 1 root root 34  4월  3 13:22 /etc/alternatives/vim -> /home/linuxbrew/.linuxbrew/bin/vim*

$ ll /home/linuxbrew/.linuxbrew/bin/vim
lrwxrwxrwx 1 ubuntu ubuntu 30  4월  3 12:22 /home/linuxbrew/.linuxbrew/bin/vim -> ../Cellar/vim/8.1.1050/bin/vim*

$ sudo update-alternatives --install /usr/bin/vi vi /home/linuxbrew/.linuxbrew/bin/vi 31
update-alternatives: using /home/linuxbrew/.linuxbrew/bin/vi to provide /usr/bin/vi (vi) in auto mode

$ sudo update-alternatives --config vi
There are 3 choices for the alternative vi (providing /usr/bin/vi).

  Selection    Path                               Priority   Status
------------------------------------------------------------
* 0            /home/linuxbrew/.linuxbrew/bin/vi   31        auto mode
  1            /home/linuxbrew/.linuxbrew/bin/vi   31        manual mode
  2            /usr/bin/vim.basic                  30        manual mode
  3            /usr/bin/vim.tiny                   10        manual mode

Press <enter> to keep the current choice[*], or type selection number:

$ which vi
/usr/bin/vi

$ ll /usr/bin/vi
lrwxrwxrwx 1 root root 20  2월 18 16:36 /usr/bin/vi -> /etc/alternatives/vi*

$ ll /etc/alternatives/vi
lrwxrwxrwx 1 root root 33  4월  3 13:33 /etc/alternatives/vi -> /home/linuxbrew/.linuxbrew/bin/vi*
```
