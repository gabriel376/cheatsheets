# GNU+Linux Cheat Sheet

## Terminal Shortcuts
* Clear: `CTRL L`
* Scroll: `SHIFT [PAGE UP/DOWN]`
* Move cursor: `CTRL [A E]`
* Copy: `CTRL SHIFT C`
* Paste: `CTRL SHIFT V`
* Search command history: `CTRL R`
* Repeat last command `!!`
* Send SIGINT: `CTRL C`
* Send EOF: `CTRL D`
* Pipe STDOUT to STDIN: `[command1] | [command2]`
* Pipe STDOUT to file: `[command] > [filename]`
* Append STDOUT to file: `[command] >> file`

## Help
* Command help: `[command] --help`
* Command manual: `man [command]`
* Command description: `whatis [command]`
* Command location: `which [command]`
* Command source, binary and manual: `whereis [command]`
* Current user: `whoami`
* Current directory: `pwd`

## Navigation
* Current directory: `./`
* Parent directory: `../`
* Change directory: `cd [path]`

## Jobs
* Run command in background: `[command] &`
* Stop foreground process: `CTRL z`
* List background processes: `jobs`
* Resume background process: `bg %[job]`
* Resume background process in foreground: `fg %[job]`
* Kill background process: `kill %[job]`

## Files and Directories
* Search by name: `find [path] -iname "*[name]*"`
* Search by content: `grep -r [path] -in -e [match]`
* Copy: `cp -r [from] [to]`
* Move/Rename: `mv [from] [to]`
* Remove: `rm -rf [path]`
* Create file or update timestamp: `touch [path]`
* Create directory tree: `mkdir -p [path]`
* List: `ls -lha [filter]`
* Symbolic link: `ln -s [from] [to]`

## Edit files
* Nano: `nano [path]`
* Vi: `vi [path]`
* Vim: `vim [path]`
* Emacs: `emacs -nw [path]`

## View files
* Concatenate to STDIN: `cat [path1] [path2] ...`
* First n lines: `head -n [lines] [path]`
* Last n lines: `tail -n [lines] [path]`
* Page: `more [path]`
* Page with scroll: `less [path]`
