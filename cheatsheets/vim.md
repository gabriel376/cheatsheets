# Vim Cheat Sheet

## Help
```Shell
:help [command]    # show command help
:help [key]        # describe key
```

## Zoom
```Shell
ctrl +    # zoom in
ctrl -    # zoom out
```

## Modes
```Shell
ESC    # command mode
i      # insert mode
```

## Buffers
```Shell
ctrl g       # show buffer information

:e [path]    # open buffer

:ls          # list buffers
:bp          # previous buffer
:bn          # next buffer

:w           # save
:w [path]    # save as
:wq          # save and quit

:bd          # close buffer
:q           # quit
:q!          # quit and discard changes
```

## Multiple Windows
```Shell
:sp [path]     # open buffer and split window horizontally
:hsplit        # split window horizontally
ctrl w S       # split window horizontally

:vsp [path]    # open buffer and split window vertically
:hsplit        # split window horizontally
ctrl w v       # split window vertically

ctrl w <       # decrease window width
ctrl w >       # increase window width
ctrl w +       # decrease window height
ctrl w -       # increase window height
ctrl w =       # reset window size

ctrl w w       # switch window
ctrl w h       # switch window left
ctrl w l       # switch window right
ctrl w k       # switch window up
ctrl w j       # switch window down
ctrl w q       # close window
```

## Movement
```Shell
k            # cursor down
j            # cursor up
h            # cursor left
l            # cursor right

H            # cursor top of screen
M            # cursor middle of screen
L            # cursor bottom of screen

b            # previous word
w            # next word

gg           # first line of document
G            # last line of document
0            # start of current line
$            # end of current line
[number]G    # to line number

{            # previous block
}            # next block
%            # matching delimiter

Ctrl y       # screen up 1 line
Ctrl e       # screen down 1 line
Ctrl u       # screen up 1/2 screen
Ctrl d       # screen down 1/2 screen
Ctrl f       # screen up 1 screen
Ctrl b       # screen down 1 screen
zz           # center screen
```

## Edit
```Shell
i         # insert mode

a         # append to next character
A         # append to end of line
O         # append to previous line
o         # append to next line

r         # replace character
R         # replace all

cb        # change from start of previous word until cursor
cw        # change from cursor until end of word
c0        # change from start of line until cursor
c$        # change from cursor until end of line

yw        # copy word
yy        # copy line
y0        # copy from start of line until cursor
y$        # copy from cursor until end of line
p         # paste

x         # delete character
dw        # delete word
dd        # delete line
d0        # delete from start of line until cursor
D         # delete from cursor until end of line
dgg       # delete from start of document until cursor
dG        # delete from cursor until end of document

u         # undo
ctrl r    # redo last undo
.         # repeat last operation
```

## Visual
```Shell
v         # start visual mode by character
V         # start visual mode by line
ctrl v    # start visual mode by block

iw        # select word
is        # select sentence
ip        # select paragraph

ab        # select () block
ib        # select () inner block
aB        # select {} block
iB        # select {} inner block
at        # select </> block
it        # select </> inner block
a<        # select <> block
i<        # select <> inner block
a[        # select [] block
i[        # select [] inner block
a"        # select "" block
i"        # select "" inner block
a'        # select '' block
i'        # select '' inner block
a`        # select `` block
i`        # select `` inner block

c         # change text
y         # copy text
x         # cut text
p         # paste text
d         # delete text

>         # indent text
<         # dedent text

u         # make lowercase
U         # make uppercase
~         # switch case
```

## Search and Replace
```Shell
?[pattern]            # search backward
/[pattern]            # search forward
N                     # previous search match
n                     # next search match

:%s/[old]/[new]/g     # replace all
:%s/[old]/[new]/gc    # replace all with confirmation
```
