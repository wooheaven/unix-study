# Install tmux
```{bash}
$ sudo apt-get install tmux
or
$ brew install tmux
```

# configure tmux
```{bash}
$ cat ~/.tmux.conf
# Use C-a as prefix and free C-b
set -g prefix C-a
unbind C-b

# Send C-a to application by pressing it twice
bind C-a send-prefix

# history limit
set-option -g history-limit 10000

# use mouse
set-option -g mouse on

# use vi
set-window-option -g mode-keys vi

# copy with xclip
bind-key -t vi-copy Enter copy-pipe "xclip -i -selection clipboard"

# Pane Selection
bind -n C-left select-pane -L
bind -n C-down select-pane -D
bind -n C-up select-pane -U
bind -n C-right select-pane -R

# Redefine splitting shortcuts
bind C-v split-window -h \; display "Splitting Vertical"
bind C-h split-window -v \; display "Splitting Horizontal"

# copy shortcuts
unbind -T copy-mode-vi Enter
bind-key -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel "xclip -selection c"
bind-key -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel "xclip -in -selection clipboard"
```

# Use
```{bash}
# in bash run or attach tmux
tmux ls              # list tmux session
tmux attach -t 0     # attache tmux session
tmux attache a -dt 1 # deattache tmux session for another and attach tmux session
tmux                 # create tmux session

# in tmux
Ctrl + b + "         : horizontal pane divide 가로로 분할창을 추가하기
Ctrl + b + %         : vertical pane divide 세로로 분할창을 추가하기
Ctrl + b + d         : deattach tmux 종료하지 않고 tmux 나가기
Ctrl + b + q         : check number of pane 분할창의 번호 확인하기
Ctrl + b + arrow     : move pane 분할창 이동하기
Ctrl + b + PgUp/Donw : scroll 스크롤
Ctrl + b + c         : new window 새로운 창 열기
Ctrl + b + [         : go to copy-mode
Ctrl + b + ]         : exit of copy-mode

# in tmus-copy-mode
Space                : Start selection
h                    : Cursor left
j                    : Cursor down
k                    : Cursor up
l                    : Cursor right
$                    : End of line
Enter                : Copy selection

Ctrl + d             : exit pane or window 분할창 및 창 종료
```

