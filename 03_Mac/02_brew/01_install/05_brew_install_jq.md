```
brew install jq
jq --version
cat model.json | jq
```

```{zsh}
brew install jq
Updating Homebrew...
==> Auto-updated Homebrew!
Updated 3 taps (caskroom/cask, homebrew/core, homebrew/science).
==> New Formulae
bioawk                        darksky-weather               elektra                       go-statik                     kumo                          librealsense@1                monero                        sickle                        visp
==> Updated Formulae
freetype ✔           bento4               datomic              fdroidserver         gnu-smalltalk        hh                   just                 librealsense         mpv                  pandoc-citeproc      python3              sbt                  tintin
gdbm ✔               bettercap            dcm2niix             flatcc               gradle-completion    homebank             kedge                libstfl              mysql                percona-server       qt                   sccache              traefik
imagemagick ✔        blastem              dependency-check     flow                 grib-api             htop                 kompose              libu2f-server        mysql-sandbox        percona-toolkit      rocksdb              sip                  travis
suite-sparse ✔       cargo-completion     devd                 fluid-synth          gst-plugins-bad      hugo                 kontena              link-grammar         ngrep                picard-tools         ruby                 snort                vcdimager
zsh ✔                ceres-solver         dmd                  fn                   gst-plugins-base     ibex                 kubeless             lwtools              nikto                pipenv               ruby@1.9             statik               vim
abcmidi              citus                dub                  fonttools            guile                idris                kubernetes-cli       macosvpn             node-build           plantuml             ruby@2.0             stress-ng            vim@7.4
antigen              clojure              enchant              freetds              gzip                 imagemagick@6        languagetool         macvim               numpy                povray               ruby@2.1             sundials             vips
apache-arrow         closure-compiler     etsh                 gammu                hadolint             irssi                ldc                  mariadb              octave               pre-commit           ruby@2.2             swagger-codegen      wine
arangodb             cmark-gfm            exomizer             get_iplayer          haste-client         jenkins              libconfig            mikutter             onioncat             pwntools             ruby@2.3             sword                wpscan
artifactory          conjure-up           fabio                ghi                  heroku               jhipster             libjson-rpc-cpp      miller               paket                pypy                 rust                 tcl-tk               youtube-dl
bear                 crosstool-ng         fd                   gifsicle             hg-flow              joplin               libmspub             mpd                  pandoc               python               s6                   terraform_landscape
==> Deleted Formulae
otto                                                                                                                                     pond

==> Installing dependencies for jq: oniguruma
==> Installing jq dependency: oniguruma
==> Downloading https://homebrew.bintray.com/bottles/oniguruma-6.7.0.sierra.bottle.tar.gz
/usr/bin/curl --show-error --user-agent Homebrew/1.4.2 (Macintosh; Intel Mac OS X 10.12.6) curl/7.54.0 --fail --location --remote-time --continue-at - --output /Users/rwoo/Library/Caches/Homebrew/oniguruma-6.7.0.sierra.bottle.tar.gz.incomplete https://homebrew.bintray.com/bottles/oniguruma-6.7.0.sierra.bottle.tar.gz
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
100  364k  100  364k    0     0   253k      0  0:00:01  0:00:01 --:--:--  253k
==> Verifying oniguruma-6.7.0.sierra.bottle.tar.gz checksum
==> Pouring oniguruma-6.7.0.sierra.bottle.tar.gz
tar xzf /Users/rwoo/Library/Caches/Homebrew/oniguruma-6.7.0.sierra.bottle.tar.gz
==> Finishing up
ln -s ../Cellar/oniguruma/6.7.0/bin/onig-config onig-config
ln -s ../Cellar/oniguruma/6.7.0/include/oniggnu.h oniggnu.h
ln -s ../Cellar/oniguruma/6.7.0/include/onigposix.h onigposix.h
ln -s ../Cellar/oniguruma/6.7.0/include/oniguruma.h oniguruma.h
ln -s ../Cellar/oniguruma/6.7.0/lib/libonig.4.dylib libonig.4.dylib
ln -s ../Cellar/oniguruma/6.7.0/lib/libonig.a libonig.a
ln -s ../Cellar/oniguruma/6.7.0/lib/libonig.dylib libonig.dylib
ln -s ../../Cellar/oniguruma/6.7.0/lib/pkgconfig/oniguruma.pc oniguruma.pc
/usr/bin/sandbox-exec -f /tmp/homebrew20180109-94028-1emkvx.sb nice /usr/local/Homebrew/Library/Homebrew/vendor/portable-ruby/2.3.3/bin/ruby -W0 -I /usr/local/Homebrew/Library/Homebrew -- /usr/local/Homebrew/Library/Homebrew/postinstall.rb /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/oniguruma.rb -v
==> Summary
🍺  /usr/local/Cellar/oniguruma/6.7.0: 17 files, 1.2MB
==> Installing jq
==> Downloading https://homebrew.bintray.com/bottles/jq-1.5_2.sierra.bottle.tar.gz
/usr/bin/curl --show-error --user-agent Homebrew/1.4.2 (Macintosh; Intel Mac OS X 10.12.6) curl/7.54.0 --fail --location --remote-time --continue-at - --output /Users/rwoo/Library/Caches/Homebrew/jq-1.5_2.sierra.bottle.tar.gz.incomplete https://homebrew.bintray.com/bottles/jq-1.5_2.sierra.bottle.tar.gz
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100  382k  100  382k    0     0   334k      0  0:00:01  0:00:01 --:--:--  334k
==> Verifying jq-1.5_2.sierra.bottle.tar.gz checksum
==> Pouring jq-1.5_2.sierra.bottle.tar.gz
tar xzf /Users/rwoo/Library/Caches/Homebrew/jq-1.5_2.sierra.bottle.tar.gz
==> Finishing up
ln -s ../Cellar/jq/1.5_2/bin/jq jq
ln -s ../Cellar/jq/1.5_2/include/jq.h jq.h
ln -s ../Cellar/jq/1.5_2/include/jv.h jv.h
ln -s ../../Cellar/jq/1.5_2/share/doc/jq jq
ln -s ../../../Cellar/jq/1.5_2/share/man/man1/jq.1 jq.1
ln -s ../Cellar/jq/1.5_2/lib/libjq.1.dylib libjq.1.dylib
ln -s ../Cellar/jq/1.5_2/lib/libjq.a libjq.a
ln -s ../Cellar/jq/1.5_2/lib/libjq.dylib libjq.dylib
/usr/bin/sandbox-exec -f /tmp/homebrew20180109-94046-tvqi4.sb nice /usr/local/Homebrew/Library/Homebrew/vendor/portable-ruby/2.3.3/bin/ruby -W0 -I /usr/local/Homebrew/Library/Homebrew -- /usr/local/Homebrew/Library/Homebrew/postinstall.rb /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/jq.rb -v
==> Summary
🍺  /usr/local/Cellar/jq/1.5_2: 18 files, 958KB
```
