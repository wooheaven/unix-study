```
$ brew update --help
Usage: brew update [options]

Fetch the newest version of Homebrew and all formulae from GitHub using git(1)
and perform any necessary migrations.

        --merge                      git merge is used to include updates
                                     (rather than git rebase).
    -f, --force                      Always do a slower, full update check (even
                                     if unnecessary).
    -v, --verbose                    Print the directories checked and git
                                     operations performed.
    -d, --debug                      Display a trace of all shell commands as
                                     they are executed.
    -h, --help                       Show this message.

$ brew update

# $ brew upgrade # upgrade formula
# $ brew cleanup # remove old formula
```
