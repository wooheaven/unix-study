# preinstall
```{bash}
# Install Command Line Tools without XCode
xcode-select --install

# Remove before install gnuplot, aquaterm
brew uninstall gnuplot
brew uninstall aquaterm
```

# install gnuplot
```{bash}
brew search gnuplot --with-aquaterm

brew install Caskroom/cask/aquaterm
# ref = https://github.com/caskroom/homebrew-cask/blob/master/Casks/aquaterm.rb

brew list
ls /usr/local/bin/gnuplot
lrwxr-xr-x  1 rwoo  admin    37B  1  2 17:58 /usr/local/bin/gnuplot@ -> ../Cellar/gnuplot/5.2.2_1/bin/gnuplot
```

# gnuplot
```{bash}
gnuplot

G N U P L O T
    Version 5.2 patchlevel 2    last modified 2017-11-15

    Copyright (C) 1986-1993, 1998, 2004, 2007-2017
    Thomas Williams, Colin Kelley and many others

    gnuplot home:     http://www.gnuplot.info
    faq, bugs, etc:   type "help FAQ"
    immediate help:   type "help"  (plot window: hit 'h')

Terminal type is now 'aqua'
gnuplot> 
```
