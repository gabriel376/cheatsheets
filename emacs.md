# Emacs Cheat Sheet

## Start/Quit
```Shell
emacs &      # Start GUI in background
emacs -nw    # Start in terminal mode

C-x C-c      # Quit
```

## Keys/Commands
```Shell
C                # Ctrl key
M                # Meta (or Alt) key

M-x [command]    # Execute command
C-g              # Abort command
```

## Help
```Shell
C-h-f [command]    # Show command help
C-h a [command]    # Show command help by matching string
C-h k [key]        # Show command help bind to a key
C-h t              # Start tutorial
```

## Buffers
```Shell
C-x C-f [path]    # Open
C-x k [buffer]    # Kill

C-x C-s           # Save
C-x s             # Save all

C-x b [buffer]    # Switch
C-x C-b           # List

C-x right         # Next
C-x left          # Previous
```

## Macros
```Shell
C-x (    # Start
C-x )    # End
C-x e    # Execute
```

## Multiple Windows
```Shell
C-x 2    # Split vertical
C-x 3    # Split horizontal

C-x o    # Switch focus
C-x 0    # Close current
C-x 1    # Close others
```

## Navigation
```Shell
M-<               # Start of buffer
M->               # End of buffer

C-b               # Previous character
C-f               # Next character

M-b               # Previous word
M-f               # Next word

C-p               # Previous line
C-n               # Next line
C-a               # Start of line
C-e               # End of line
M-g g [number]    # Go to line number

M-v               # Previous screen
C-v               # Next screen
C-l               # Center screen
```

## Mark
```Shell
C-x h      # Whole buffer
C-space    # Set mark
```

## Search
```Shell
C-r    # Search backward
C-s    # Search forward
```

## Edit
```Shell
C-/        # Undo
C-g C-/    # Redo
```

## Clipboard
```Shell
M-w    # Copy
C-w    # Cut
C-y    # Yank
```

## Shell
```Shell
M-! [command]    # Run shell command
```
