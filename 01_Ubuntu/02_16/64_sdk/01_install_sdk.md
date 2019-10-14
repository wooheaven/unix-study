# install sdk
```
$ curl -s "https://get.sdkman.io" | bash
$ vi ~/.bashrc
...
# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/ubuntu/.sdkman"
[[ -s "/home/ubuntu/.sdkman/bin/sdkman-init.sh" ]] && source "/home/ubuntu/.sdkman/bin/sdkman-init.sh"
# export JAVA_HOME="/home/ubuntu/.sdkman/candidates/java/current" is belong to the above line's cmd.

$ sdk version
SDKMAN 5.7.3+337
```
