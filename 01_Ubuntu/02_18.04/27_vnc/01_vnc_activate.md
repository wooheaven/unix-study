```text
settings -> sharing 
-> Screen Sharing : Off to On
-> Allow connections to control the screen
-> Access Options -> Require a password

$ sudo apt-get install dconf-editor
dconf-editor -> org / gnome / desktop / remote-access / require-encryption : On to Off

logout -> login
```
