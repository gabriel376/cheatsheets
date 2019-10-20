# Emacs Cheat Sheet

## Start/Quit
```Shell
emacs &      # start GUI in background
emacs -nw    # start in terminal mode

C-x C-c      # quit
```

## Keys/Commands
```Shell
C                # Ctrl key
M                # Meta (or Alt) key

M-x [command]    # execute command
C-g              # abort command
```

## Help
```Shell
C-h-f [command]    # show command help
C-h a [command]    # show command help by matching string
C-h k [key]        # show command help bind to a key
C-h t              # start tutorial
```

## Buffers
```Shell
C-x C-f [path]    # open
C-x k [buffer]    # kill

C-x C-s           # save
C-x s             # save all

C-x b [buffer]    # switch
C-x C-b           # list

C-x right         # next
C-x left          # previous
```

## Macros
```Shell
C-x (    # start
C-x )    # end
C-x e    # execute
```

## Multiple Windows
```Shell
C-x 2    # split vertical
C-x 3    # split horizontal

C-x o    # switch focus
C-x 0    # close current
C-x 1    # close others
```

## Navigation
```Shell
M-<               # start of buffer
M->               # end of buffer

C-b               # previous character
C-f               # next character

M-b               # previous word
M-f               # next word

C-p               # previous line
C-n               # next line
C-a               # start of line
C-e               # end of line
M-g g [number]    # to line number

M-v               # previous screen
C-v               # next screen
C-l               # center screen
```

## Mark
```Shell
C-x h      # whole buffer
C-space    # set mark
```

## Search
```Shell
C-r    # search backward
C-s    # search forward
```

## Edit
```Shell
C-/        # undo
C-g C-/    # redo
```

## Clipboard
```Shell
M-w    # copy
C-w    # cut
C-y    # yank
M-y    # cycle
```

## Shell
```Shell
M-! [command]    # run shell command
```

## Daemon
```Shell
emacs --daemon                                # start daemon in background
emacs --bg-daemon=[name]                      # start named daemon in background
emacs --fg-daemon=[name]                      # start named daemon in foreground

emacsclient --tty                             # connect to daemon in terminal mode
emacsclient --tty \                           # connect to named daemon in terminal mode
            --socket-name=[name]

emacsclient --create-frame                    # connect to daemon in gui mode
emacsclient --create-frame \                  # connect to named daemon in gui mode
            --socket-name=[name]

emacsclient -e '(save-buffers-kill-emacs)'    # kill daemon
emacsclient -e '(save-buffers-kill-emacs)'    # kill named daemon
            --socket-name=[name]
```
