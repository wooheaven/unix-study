# install ruby, rbenv, ruby-build by brew
```
$ ruby --version
ruby 2.3.1p112 (2016-04-26) [x86_64-linux-gnu]

$ brew install ruby
$ /home/linuxbrew/.linuxbrew/Cellar/ruby/2.6.3/bin/ruby --version
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]

$ brew install rbenv ruby-build

$ vi ~/.bashrc
...
# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

$ which rbenv
/home/linuxbrew/.linuxbrew/bin/rbenv

$ rbenv -v
rbenv 1.1.2

$ rbenv versions
* system (set by /home/ubuntu/.rbenv/version)
```

# install ruby by rbenv
```
$ rbenv install -l
$ rbenv install 2.6.3
$ rbenv versions
* system (set by /home/ubuntu/.rbenv/version)
  2.6.3
```

# configure local ruby and bundle install for project
```
$ rbenv local 2.6.3

$ cat .ruby-version 
2.6.3

$ ruby -v
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]

$ rbenv versions
  system
* 2.6.3 (set by /home/ubuntu/02_Documents/09_Resume_WorkSpace/resume/.ruby-version)

$ rbenv rehash

$ bundle version
Bundler version 1.17.2 (2018-12-19 commit 3fc4de72b)

$ pwd
/home/ubuntu/02_Documents/09_Resume_WorkSpace/resume

$ bundle install
$ bundle exec jekyll serve
Configuration file: /home/ubuntu/Documents/09_Resume_WorkSpace/resume/_config.yml
            Source: /home/ubuntu/Documents/09_Resume_WorkSpace/resume
       Destination: /home/ubuntu/Documents/09_Resume_WorkSpace/resume/_site
 Incremental build: disabled. Enable with --incremental
      Generating... 
                    done in 0.099 seconds.
 Auto-regeneration: enabled for '/home/ubuntu/Documents/09_Resume_WorkSpace/resume'
    Server address: http://127.0.0.1:4000
  Server running... press ctrl-c to stop.
```
