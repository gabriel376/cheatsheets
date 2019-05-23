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
[command] > [path]       # pipe STDOUT to file
[command] >> [path]      # append STDOUT to file
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

## Filesystem
```Shell
/                      # root filesystem
/bin	               # essential command binaries
/boot	               # static files of the boot loader
/dev                   # device files
/etc                   # system configuration files
/etc/opt               # configuration files for /opt
/etc/X11               # configuration files for the X Window System
/home                  # user home directories
/lib                   # essential shared libraries and kernel modules
/lib64                 # essential shared libraries and kernel modules for 64-bit systems
/media                 # mount point for removable media
/mnt                   # mount point for mounting a filesystem temporarily
/opt                   # add-on application software packages
/proc                  # virtual filesystem for kernel and process information
/root                  # root home directory
/run                   # data relevant to running processes
/sbin                  # system binaries
/srv                   # data for services provided by this system
/sys                   # virtual filesystem for kernel and process information
/tmp                   # temporary files
/usr                   # secondary hierarchy for user-related binaries, libraries and manuals
/usr/bin               # essential command binaries
/usr/include           # system include files (C header files)
/usr/lib               # essential shared libraries and kernel modules
/usr/lib64             # essential shared libraries and kernel modules for 64-bit systems
/usr/libexec           # internal binaries that are not intended to be executed directly by users
/usr/local             # local hierarchy
/usr/local/bin         # local binaries
/usr/local/etc         # host-specific system configuration for local binaries
/usr/local/games       # local game binaries
/usr/local/include     # local C header files
/usr/local/lib         # local libraries
/usr/local/man         # local manuals
/usr/local/sbin        # local system binaries
/usr/local/share       # local architecture-independent hierarchy
/usr/local/src         # local source code
/usr/sbin              # non-essential standard system binaries
/usr/share             # architecture-independent data
/usr/share/man         # manual pages
/usr/share/man/man1    # user programs manuals
/usr/share/man/man2    # system calls manuals
/usr/share/man/man3    # library calls manuals
/usr/share/man/man4    # special files manuals
/usr/share/man/man5    # file formats manuals
/usr/share/man/man6    # games manuals
/usr/share/man/man7    # miscellaneous manuals
/usr/share/man/man8    # system administration manuals
/usr/src               # source code
/var                   # variable data
/var/cache             # application cache data
/var/crash             # system crash dumps
/var/lib               # variable state information
/var/local             # variable data for /usr/local
/var/lock              # lock files
/var/log               # log files and directories
/var/mail              # user mailbox files
/var/opt               # variable data for /opt
/var/run               # data relevant to running processes
/var/spool             # application spool data
/var/tmp               # temporary files preserved between system reboots
```

## Files
```Shell
touch [path]               # create file and update timestamp
cp [from] [to]             # copy file
mv [from] [to]             # move or rename
ln -s [from] [to]          # create symbolic link
rm [path]                  # remove file

cat [path] [path]          # concatenate files
head -n [number] [path]    # print the first n lines
tail -n [number] [path]    # print the last n lines
less [path]                # read file with page control
```

## Directories
```Shell
mkdir [path]         # create directory
mkdir -p [path]      # create directory tree

cp -r [from] [to]    # copy directory
mv [from] [to]       # move or rename
ln -s [from] [to]    # create symbolic link

rm -r [path]         # remove directory
```

## Filesystem Navigation
```Shell
cd [path]                  # change directory
cd /                       # change to root directory
cd ..                      # change to parent directory
cd ~                       # change to user home directory
cd -                       # change to previous directory

pwd                        # print current working directory

ls [path]                  # list files and directories
ls -lha [path]             # list all using long list and human-readable format

tree [path]                # list files and directories in a tree-like format
tree -L [number] [path]    # limit tree level
```

## Text Editors
```Shell
nano [path]         # use nano
joe [path]          # use joe
vim [path]          # use vim
emacs -nw [path]    # use emacs
```

## File Managers
```Shell
mc        # use mc
ranger    # use ranger
nnn       # use nnn
vifm      # use vifm
```

## Search
```Shell
locate [pattern]               # search file by name using mlocate.db database
updatedb                       # update database used by locate command

find [path] -name [pattern]    # search files by name in directory
grep [pattern] -r [path]       # search files by content in directory
```
