# create, search, restore a session of screen
```bash
$ screen -S mp

$ screen -ls
There is a screen on:
	31476.mp	(2019년 04월 10일 16시 53분 10초)	(Detached)
1 Socket in /var/run/screen/S-ubuntu.

$ screen -r 31476
```

# screen cmd
```text
Ctrl + a + c : Create a window
Ctrl + a + " : List all windows and Select number by keyboard arrow
Ctrl + a + 0 : Switch to window 0 (by number)
Ctrl + a + S : Horizontally Split current window
Ctrl + a + | : Vertically Split current window
Ctrl + a + tab : Switch to next window
Ctrl + a + Q : Close All windows except current one
Ctrl + a + X : Close current window
Ctrl + a + d : detach
```
