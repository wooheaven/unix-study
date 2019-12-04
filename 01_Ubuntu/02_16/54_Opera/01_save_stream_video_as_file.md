# save stream video as file
```{bash}
# web browser play video
$ pgrep -f flash
31921

$ cd /proc/31921/fd

$ ls | grep "Flash"
lrwx------ 1 user user 64  8월 15 15:31 32 -> ~/.config/opera-developer/Pepper Data/Shockwave Flash/.org.chromium.Chromium.grh3HJ (deleted)

# after video is downloaded
$ cp 46 ~/Downloads/46.flv
```
