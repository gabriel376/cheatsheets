# GNU+Linux Cheat Sheet

## Help
```Shell
[command] --help     # command help
man [command]        # command manual
whatis [command]     # command description
which [command]      # command location
whereis [command]    # command related files location
```

## Shell Redirection
```Shell
[command] | [command]    # pipe STDOUT to STDIN
[command] > [file]       # pipe STDOUT to file
[command] >> [file]      # append STDOUT to file
```

## Navigation
```Shell
cd [path]    # change directory
cd /         # change to root directory
cd ..        # change to parent directory
cd ~         # change to home directory
```

## Jobs
```Shell
[command] &    # run command in background
jobs           # list background process
Ctrl z         # stop foreground process
fg %[job]      # send job to foreground
bg %[job]      # send job to background
kill %[job]    # kill job 
```

## Files and Directories
```Shell
touch [path]                      # create file
cp [from] [to]                    # copy file
rm [path]                         # remove file

mkdir [path]                      # create directory
mkdir -p [path]                   # create directory tree
cp -r [from] [to]                 # copy directory
rm -r [path]                      # remove directory

pwd                               # print current directory
ls [path]                         # list files and directories
ls -lha [path]                    # list all files and directories using long format
mv [from] [to]                    # move or rename file or directory
ln -s [from] [to]                 # create symbolic link

find [path] -name [pattern]       # search file or directory by name
grep -r [path] -n -e [pattern]    # search files by content

cat [path] [path]                 # concatenate files
head -n [number] [path]           # print the first n lines
tail -n [number] [path]           # print the last n lines
less [path]                       # read file with page control

/                                 # root directory or path separator
.                                 # current directory
..                                # parent directory
~                                 # home directory

nano [path]                       # use nano editor
joe [path]                        # use joe editor
vim [path]                        # use vim editor
emacs -nw [path]                  # use emacs editor

mc                                # use mc file manager
ranger                            # use ranger file manager
nnn                               # use nnn file manager
vifm                              # use vifm file manager
```
