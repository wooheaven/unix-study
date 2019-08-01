# install ruby, rbenv, ruby-build by brew
```
$ ruby --version
ruby 2.3.7p456 (2018-03-28 revision 63024) [universal.x86_64-darwin18]

$ brew install ruby
$ /usr/local/Cellar/ruby/2.6.3/bin/ruby --version
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin16]

$ brew install rbenv ruby-build
$ vi ~/.bashrc
...
# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

$ rbenv -v
rbenv 1.1.2

$ rbenv versions
* system (set by /Users/rwoo/.rbenv/version)
```

# install ruby and it's env by rbenv
```
$ rbenv install -l
$ rbenv install 2.6.3
$ rbenv versions
* system (set by /Users/rwoo/.rbenv/version)
  2.6.3

$ rbenv local 2.6.3
$ cat .ruby-version
2.6.3
$ ruby -v
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin18]
$ rbenv versions
  system
* 2.6.3 (set by /Users/rwoo/02_WorkSpace/40_Resume_WorkSpace/resume/.ruby-version)
$ rbenv rehash
```

# install package of github/resume by bundle
```
$ bundle version
Bundler version 1.17.2 (2018-12-19 commit 3fc4de72b)

$ bundle install # error
...
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.

    current directory: /Users/rwoo/02_WorkSpace/40_Resume_WorkSpace/resume/_vendor/bundle/ruby/2.6.0/gems/ffi-1.9.21/ext/ffi_c
/Users/rwoo/.rbenv/versions/2.6.3/bin/ruby -I /Users/rwoo/.rbenv/versions/2.6.3/lib/ruby/2.6.0 -r ./siteconf20190731-78789-1bkenr.rb extconf.rb
checking for ffi.h... no
checking for ffi.h in /usr/local/include,/usr/include/ffi... no
checking for shlwapi.h... no
checking for rb_thread_blocking_region()... no
checking for rb_thread_call_with_gvl()... yes
checking for rb_thread_call_without_gvl()... yes
creating extconf.h
creating Makefile

current directory: /Users/rwoo/02_WorkSpace/40_Resume_WorkSpace/resume/_vendor/bundle/ruby/2.6.0/gems/ffi-1.9.21/ext/ffi_c
make "DESTDIR=" clean

current directory: /Users/rwoo/02_WorkSpace/40_Resume_WorkSpace/resume/_vendor/bundle/ruby/2.6.0/gems/ffi-1.9.21/ext/ffi_c
make "DESTDIR="
Running autoreconf for libffi
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal -I m4 --output=aclocal.m4t
Can't exec "aclocal": No such file or directory at /usr/local/Cellar/autoconf/2.69/share/autoconf/Autom4te/FileUtils.pm line 326.
autoreconf: failed to run aclocal: No such file or directory
make: *** ["/Users/rwoo/02_WorkSpace/40_Resume_WorkSpace/resume/_vendor/bundle/ruby/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi-x86_64-darwin18"/.libs/libffi_convenience.a] Error 1

make failed, exit code 2

Gem files will remain installed in /Users/rwoo/02_WorkSpace/40_Resume_WorkSpace/resume/_vendor/bundle/ruby/2.6.0/gems/ffi-1.9.21 for inspection.
Results logged to /Users/rwoo/02_WorkSpace/40_Resume_WorkSpace/resume/_vendor/bundle/ruby/2.6.0/extensions/x86_64-darwin-18/2.6.0-static/ffi-1.9.21/gem_make.out

An error occurred while installing ffi (1.9.21), and Bundler cannot continue.
Make sure that `gem install ffi -v '1.9.21' --source 'https://rubygems.org/'` succeeds before bundling.

In Gemfile:
  github-pages was resolved to 176, which depends on
    github-pages-health-check was resolved to 1.3.5, which depends on
      typhoeus was resolved to 0.8.0, which depends on
        ethon was resolved to 0.11.0, which depends on
          ffi

$ gem install ffi -v "1.9.21" # error
Building native extensions. This could take a while...
ERROR:  Error installing ffi:
	ERROR: Failed to build gem native extension.

    current directory: /Users/rwoo/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c
/Users/rwoo/.rbenv/versions/2.6.3/bin/ruby -I /Users/rwoo/.rbenv/versions/2.6.3/lib/ruby/2.6.0 -r ./siteconf20190731-83971-1jaitlc.rb extconf.rb
checking for ffi.h... no
checking for ffi.h in /usr/local/include,/usr/include/ffi... no
checking for shlwapi.h... no
checking for rb_thread_blocking_region()... no
checking for rb_thread_call_with_gvl()... yes
checking for rb_thread_call_without_gvl()... yes
creating extconf.h
creating Makefile

current directory: /Users/rwoo/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c
make "DESTDIR=" clean

current directory: /Users/rwoo/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c
make "DESTDIR="
Running autoreconf for libffi
autoreconf: Entering directory '.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal -I m4 --output=aclocal.m4t
Can't exec "aclocal": No such file or directory at /usr/local/Cellar/autoconf/2.69/share/autoconf/Autom4te/FileUtils.pm line 326.
autoreconf: failed to run aclocal: No such file or directory
make: *** ["/Users/rwoo/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/ffi-1.9.21/ext/ffi_c/libffi-x86_64-darwin18"/.libs/libffi_convenience.a] Error 1

make failed, exit code 2

Gem files will remain installed in /Users/rwoo/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/ffi-1.9.21 for inspection.
Results logged to /Users/rwoo/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/extensions/x86_64-darwin-18/2.6.0-static/ffi-1.9.21/gem_make.out

$ brew instal automake
$ gem install ffi --version 1.9.21
Building native extensions. This could take a while...
Successfully installed ffi-1.9.21
Parsing documentation for ffi-1.9.21
Installing ri documentation for ffi-1.9.21
Done installing documentation for ffi after 68 seconds
1 gem installed

$ bundle install

$ bundle exec jekyll serve
```
