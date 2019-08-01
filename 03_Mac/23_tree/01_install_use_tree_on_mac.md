# Custom tree on MAC
```
 rwoo@rwooui-MacBook-Pro  ~  cat ~/tree
#!/bin/bash

SEDMAGIC='s;[^/]*/;|____;g;s;____|; |;g'

if [ "$#" -gt 0 ] ; then
   dirlist="$@"
else
   dirlist="."
fi

for x in $dirlist; do
     find "$x" -print | sed -e "$SEDMAGIC"
done

 rwoo@rwooui-MacBook-Pro  ~  sudo rm ~/tree
Password:

 rwoo@rwooui-MacBook-Pro  ~  cat ~/tree
cat: ~/tree: No such file or directory
```

# brew install tree
```
 rwoo@rwooui-MacBook-Pro  ~  brew info tree
tree: stable 1.7.0 (bottled)
Display directories as trees (with optional color/HTML output)
http://mama.indstate.edu/users/ice/tree/
Not installed
From: https://github.com/Homebrew/homebrew-core/blob/master/Formula/tree.rb

 rwoo@rwooui-MacBook-Pro  ~  brew install tree
Updating Homebrew...
==> Auto-updated Homebrew!
Updated 4 taps (caskroom/cask, homebrew/core, homebrew/science, pivotal/tap).
==> New Formulae
ballerina                  chrome-export              coreos-ct                  dynare                     grv                        libbitcoin-consensus       openimageio                qtkeychain                 shogun                     urdfdom
bareos-client              clblast                    dartsim                    fcl                        howdoi                     mariadb-connector-odbc     posh                       restview                   siril                      urdfdom_headers
boost-python3              console_bridge             dashing                    gocryptfs                  krakend                    mdcat                      primer3                    shelltestrunner            unravel
==> Updated Formulae
azure-cli ✔                   bzt                           ecl                           git-town                      jmeter                        lynis                         osquery                       s-search                      tomee-webprofile
fltk ✔                        calc                          elasticsearch                 gitbucket                     joplin                        lysp                          packer                        s3-backer                     traefik
graphicsmagick ✔              carthage                      elasticsearch@5.6             github-keygen                 jvm-mon                       lzlib                         packetbeat                    sagittarius-scheme            twarc
mpfr ✔                        cask                          elixir                        gitless                       kaitai-struct-compiler        macvim                        paket                         saldl                         txr
p7zip ✔                       cayley                        embulk                        gjs                           kibana                        magic-wormhole                pandoc-citeproc               saltstack                     typescript
pivotal/tap/springboot ✔      ccache                        emscripten                    global                        kibana@5.6                    makensis                      passenger                     sane-backends                 ucon64
abnfgen                       ccm                           encfs                         go                            kitchen-sync                  mame                          pcb                           sbcl                          udpxy
acmetool                      cfr-decompiler                enchant                       go@1.8                        kite                          mapnik                        pegtl                         sbt                           udunits
acpica                        cfssl                         entr                          godep                         knot                          mariadb@10.0                  percona-server@5.6            sbt@0.13                      uhd
advancecomp                   checkstyle                    erlang                        goenv                         knot-resolver                 mariadb@10.1                  percona-toolkit               scala@2.10                    unibilium
advancemame                   chibi-scheme                  etcd                          gource                        kobalt                        mas                           percona-xtrabackup            sccache                       uriparser
akamai                        chronograf                    exempi                        gpatch                        kops                          mbedtls                       pgpool-ii                     schismtracker                 userspace-rcu
amber                         chuck                         exim                          gradle                        kubernetes-cli                memcached                     picard-tools                  selenium-server-standalone    uwsgi
angular-cli                   citus                         expect                        groonga                       kubernetes-helm               mercurial                     pilosa                        sfk                           vagrant-completion
ansible                       cjdns                         f3                            grpc                          lame                          metabase                      pioneer                       shadowsocks-libev             vala
ant                           clamav                        faas-cli                      gsoap                         landscaper                    metricbeat                    pivotal/tap/gemfire           sip                           vapoursynth
apache-geode                  cloc                          fabio                         guile                         latex2html                    mgba                          planck                        skafos                        vault
apibuilder-cli                clojure                       fd                            guile@2.0                     lbdb                          mikutter                      plantuml                      snakemake                     verilator
apm-server                    closure-compiler              feh                           gwenhywfar                    ledit                         minimal-racket                plzip                         snapcraft                     vert.x
app-engine-java               cockroach                     ffmbc                         gwyddion                      leptonica                     minio-mc                      postgresql                    solr                          vifm
aqbanking                     coffeescript                  ffmpeg                        gxml                          libav                         minisign                      postgresql@9.4                sonarqube                     vim
arangodb                      conan                         ffmpeg@2.8                    hadolint                      libbitcoin                    miniupnpc                     postgresql@9.5                sourcekitten                  vips
argyll-cms                    conjure-up                    fibjs                         hadoop                        libbitcoin-blockchain         mlton                         postgresql@9.6                speedtest-cli                 w3m
armadillo                     consul                        filebeat                      haproxy                       libbitcoin-database           mockserver                    pre-commit                    sphinx-doc                    webpack
artifactory                   cpprestsdk                    fizmo                         harfbuzz                      libbitcoin-explorer           monetdb                       presto                        spigot                        wiredtiger
asciinema                     cryfs                         flow                          haxe                          libbitcoin-node               mongoose                      prips                         sqlmap                        wireguard-tools
asdf                          crystal-icr                   fluent-bit                    heartbeat                     libbitcoin-server             mpc                           proguard                      sslh                          wpcli-completion
auditbeat                     crystal-lang                  fn                            heroku                        libebur128                    mpd                           pspg                          sslsplit                      wtf
augeas                        daemonize                     folly                         hg-fast-export                libgee                        mpdas                         py2cairo                      sslyze                        x264
autogen                       davmail                       fonttools                     hlint                         libgtop                       mpv                           py3cairo                      statik                        x3270
aws-elasticbeanstalk          dbus                          fossil                        html-xml-utils                libhttpseverywhere            mrboom                        pyinvoke                      stella                        xmake
aws-sdk-cpp                   dbus-glib                     fox                           htmldoc                       liblwgeom                     mu                            python                        stk                           xpdf
bandcamp-dl                   dcmtk                         freedink                      htop                          libmicrohttpd                 multimarkdown                 python-markdown               stockfish                     xrootd
baresip                       dep                           freeipmi                      http-parser                   libmpdclient                  mutt                          qpdf                          storm                         xtensor
bartycrouch                   dependency-check              freeradius-server             hubflow                       libphonenumber                mytop                         qpid-proton                   surfraw                       xxhash
bash                          dfmt                          fribidi                       huexpress                     libpq                         nailgun                       quantlib                      svgo                          yaml-cpp
bazel                         dhall-json                    frugal                        hugo                          libpqxx                       nano                          questdb                       swiftformat                   ykman
bcftools                      diamond                       fuse-zip                      hwloc                         librealsense                  nasm                          quicktype                     swiftlint                     ykneomgr
bdw-gc                        dislocker                     gammaray                      i2p                           librsvg                       ncdu                          rabbitmq                      sword                         yle-dl
bee                           django-completion             gcovr                         ice                           libsass                       ncurses                       radare2                       syncthing                     you-get
bfg                           docfx                         gdb                           ideviceinstaller              libspatialite                 neko                          rakudo-star                   systemc                       youtube-dl
bigloo                        docker                        geeqie                        igv                           libtensorflow                 neovim                        ranger                        taisei                        zanata-client
binutils                      docker-completion             get-flash-videos              infer                         libtrng                       netcdf                        re2                           telegraf                      zile
bit                           docker-compose                gexiv2                        influxdb                      libxlsxwriter                 nghttp2                       redis                         teleport                      zimg
bitrise                       dpkg                          gforth                        innotop                       libzip                        nginx                         rgbds                         terraform
boost-python                  dtc                           gifski                        isc-dhcp                      libzzip                       node                          ripgrep                       terragrunt
bork                          duck                          ginac                         javarepl                      liquibase                     node-build                    rocksdb                       tig
bowtie2                       duo_unix                      git-archive-all               jenkins                       log4cplus                     octave                        rom-tools                     timewarrior
brew-gem                      dwarfutils                    git-fresh                     jenkins-job-builder           logentries                    openrct2                      rsync                         tintin
btfs                          e2fsprogs                     git-imerge                    jhiccup                       logstalgia                    openrtsp                      rtags                         tldr
burp                          ebook-tools                   git-standup                   jhipster                      logstash                      ortp                          rustup-init                   tomcat
==> Renamed Formulae
ssreflect -> math-comp                                                                                                                   tachyon -> alluxio
==> Deleted Formulae
clozure-cl                        go@1.6                            go@1.7                            mg3a                              mvptree                           qt@5.7                            root@5                            talk-filters

==> Downloading https://homebrew.bintray.com/bottles/tree-1.7.0.sierra.bottle.1.tar.gz
######################################################################## 100.0%
==> Pouring tree-1.7.0.sierra.bottle.1.tar.gz
🍺  /usr/local/Cellar/tree/1.7.0: 7 files, 113.3KB

 rwoo@rwooui-MacBook-Pro  ~  brew info tree
tree: stable 1.7.0 (bottled)
Display directories as trees (with optional color/HTML output)
http://mama.indstate.edu/users/ice/tree/
/usr/local/Cellar/tree/1.7.0 (7 files, 113.3KB) *
  Poured from bottle on 2018-02-14 at 15:14:39
From: https://github.com/Homebrew/homebrew-core/blob/master/Formula/tree.rb

 rwoo@rwooui-MacBook-Pro  ~  tree --version
tree v1.7.0 (c) 1996 - 2014 by Steve Baker, Thomas Moore, Francesc Rocher, Florian Sesser, Kyosuke Tokoro
```

# tree 
```
 rwoo@rwooui-MacBook-Pro  ~  tree --help
usage: tree [-acdfghilnpqrstuvxACDFJQNSUX] [-H baseHREF] [-T title ]
	[-L level [-R]] [-P pattern] [-I pattern] [-o filename] [--version]
	[--help] [--inodes] [--device] [--noreport] [--nolinks] [--dirsfirst]
	[--charset charset] [--filelimit[=]#] [--si] [--timefmt[=]<f>]
	[--sort[=]<name>] [--matchdirs] [--ignore-case] [--] [<directory list>]
  ------- Listing options -------
  -a            All files are listed.
  -d            List directories only.
  -l            Follow symbolic links like directories.
  -f            Print the full path prefix for each file.
  -x            Stay on current filesystem only.
  -L level      Descend only level directories deep.
  -R            Rerun tree when max dir level reached.
  -P pattern    List only those files that match the pattern given.
  -I pattern    Do not list files that match the given pattern.
  --ignore-case Ignore case when pattern matching.
  --matchdirs   Include directory names in -P pattern matching.
  --noreport    Turn off file/directory count at end of tree listing.
  --charset X   Use charset X for terminal/HTML and indentation line output.
  --filelimit # Do not descend dirs with more than # files in them.
  --timefmt <f> Print and format time according to the format <f>.
  -o filename   Output to file instead of stdout.
  -------- File options ---------
  -q            Print non-printable characters as '?'.
  -N            Print non-printable characters as is.
  -Q            Quote filenames with double quotes.
  -p            Print the protections for each file.
  -u            Displays file owner or UID number.
  -g            Displays file group owner or GID number.
  -s            Print the size in bytes of each file.
  -h            Print the size in a more human readable way.
  --si          Like -h, but use in SI units (powers of 1000).
  -D            Print the date of last modification or (-c) status change.
  -F            Appends '/', '=', '*', '@', '|' or '>' as per ls -F.
  --inodes      Print inode number of each file.
  --device      Print device ID number to which each file belongs.
  ------- Sorting options -------
  -v            Sort files alphanumerically by version.
  -t            Sort files by last modification time.
  -c            Sort files by last status change time.
  -U            Leave files unsorted.
  -r            Reverse the order of the sort.
  --dirsfirst   List directories before files (-U disables).
  --sort X      Select sort: name,version,size,mtime,ctime.
  ------- Graphics options ------
  -i            Don't print indentation lines.
  -A            Print ANSI lines graphic indentation lines.
  -S            Print with CP437 (console) graphics indentation lines.
  -n            Turn colorization off always (-C overrides).
  -C            Turn colorization on always.
  ------- XML/HTML/JSON options -------
  -X            Prints out an XML representation of the tree.
  -J            Prints out an JSON representation of the tree.
  -H baseHREF   Prints out HTML format with baseHREF as top directory.
  -T string     Replace the default HTML title and H1 header with string.
  --nolinks     Turn off hyperlinks in HTML output.
  ---- Miscellaneous options ----
  --version     Print version and exit.
  --help        Print usage and this help message and exit.
  --            Options processing terminator.

 rwoo@rwooui-MacBook-Pro  ~  tree . -H baseHREF
```
