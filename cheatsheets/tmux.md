# tmux Cheat Sheet

## Help
```Shell
man tmux                     # show tmux manual page
tmux -V                      # print tmux version
list-keys        Ctrl b ?    # list key bindings
list-commands                # list tmux commands
clock-mode       Ctrl b t    # display clock
```

## Command
```Shell
tmux [command]        # run command
Ctrl b : [command]    # run command
```

## Server
```
start-server    # start tmux server
choose-tree     # choose session, window or pane
kill-server     # kill tmux server
```

## Session
```Shell
new-session                                 # start new session
new-session -s [name]                       # start new session and set name

attach-session                              # attach client to last detached session
attach-session -t [session]                 # attach client to target session
attach-session -d                           # detach other clients from session

list-sessions                               # list sessions

choose-session                  Ctrl b s    # choose session

rename-session [name]           Ctrl b $    # rename session

kill-session                                # kill current session
kill-session -a                             # kill all sessions except current
kill-session -t [session]                   # kill target session
kill-session -a -t [session]                # kill all sessions except target
```

## Client
```Shell
switch-client -t [session]                # switch to target session
switch-client -l              Ctrl b L    # switch to last session
switch-client -p              Ctrl b (    # switch to previous session
switch-client -n              Ctrl b )    # switch to next session

list-clients                              # list clients attached to server
list-clients -t [session]                 # list clients attached to target session

choose-client                 Ctrl b D    # choose client

detach-client                 Ctrl b d    # detach current client from session
detach-client -a                          # detach all clients except current
detach-client -s [session]                # detach client from target session
detach-client -t [client]                 # detach target client from session
```

## Window
```Shell
new-window                              Ctrl b c    # create window
new-window -n [name]                                # create window and set name

rename-window [name]                    Ctrl b ,    # rename window
rename-window -t [window] [name]                    # rename target window

list-windows                                        # list window

choose-window                           Ctrl b w    # choose window

select-window -t [window]                           # select target window
last-window                             Ctrl b l    # select last window
previous-window                         Ctrl b p    # select previous window
next-window                             Ctrl b n    # select next window

move-window -t [session]                Ctrl b .    # move current window to target session
move-window -s [window] -t [session]                # move target window to target session

swap-window -s [window] -t [window]                 # swap windows

kill-window                             Ctrl b &    # kill current window
kill-window -t [window]                             # kill target window
```

## Pane
```Shell
split-window -v                  Ctrl b %             # split pane vertically
split-window -h                  Ctrl b %             # split pane horizontally

display-panes                    Ctrl b q             # display pane numbers

last-pane                        Ctrl b ;             # select last pane
select-pane -t -                                      # select previous pane
select-pane -t +                 Ctrl b o             # select next pane
select-pane -U                   Ctrl b up            # select pane above
select-pane -D                   Ctrl b down          # select pane below
select-pane -L                   Ctrl b left          # select pane to the left
select-pane -R                   Ctrl b right         # select pane to the right

rotate-window                    Ctrl b Ctrl o        # rotate panes in window

swap-pane -U                     Ctrl b {             # swap pane with previous one
swap-pane -D                     Ctrl b }             # swap pane with next one
swap-pane -s [pane] -t [pane]                         # swap panes

next-layout                      Ctrl b space         # select next pane layout

resize-pane -Z                   Ctrl b z             # toggle pane zoom
resize-pane -U                   Ctrl b Ctrl up       # resize pane up
resize-pane -D                   Ctrl b Ctrl down     # resize pane down
resize-pane -L                   Ctrl b Ctrl left     # resize pane left
resize-pane -R                   Ctrl b Ctrl right    # resize pane right

break-pane                       Ctrl b !             # break current pane into a new window

kill-pane                        Ctrl b x             # kill current pane
kill-pane -t [pane]                                   # kill target pane
```
