# GNU+Linux Cheat Sheet

## Help
```Shell
[command] --help     # Command help
man [command]        # Command manual
whatis [command]     # Command description
which [command]      # Command location
whereis [command]    # Command related files location
```

## Shell Redirection
```Shell
[command] | [command]    # Pipe STDOUT to STDIN
[command] > [file]       # Pipe STDOUT to file
[command] >> [file]      # Append STDOUT to file
```

## Navigation
```Shell
cd [path]    # Change directory
cd /         # Change to root directory
cd ..        # Change to parent directory
cd ~         # Change to home directory
```

## Jobs
```Shell
[command] &    # Run command in background
jobs           # List background process
Ctrl z         # Stop foreground process
fg %[job]      # Send job to foreground
bg %[job]      # Send job to background
kill %[job]    # Kill job 
```

## Files and Directories
```Shell
touch [path]                      # Create file
cp [from] [to]                    # Copy file
rm [path]                         # Remove file

mkdir [path]                      # Create directory
mkdir -p [path]                   # Create directory tree
cp -r [from] [to]                 # Copy directory
rm -r [path]                      # Remove directory

pwd                               # Print current directory
ls [path]                         # List files and directories
ls -lha [path]                    # List all files and directories using long format
mv [from] [to]                    # Move or rename file or directory
ln -s [from] [to]                 # Create symbolic link

find [path] -name [pattern]       # Search file or directory by name
grep -r [path] -n -e [pattern]    # Search files by content

cat [path] [path]                 # Concatenate files
head -n [number] [path]           # Print the first n lines
tail -n [number] [path]           # Print the last n lines
less [path]                       # Read file with page control

/                                 # Root directory or path separator
.                                 # Current directory
..                                # Parent directory
~                                 # Home directory

nano [path]                       # Use nano editor
joe [path]                        # Use joe editor
vim [path]                        # Use vim editor
emacs -nw [path]                  # Use emacs editor

mc                                # Use mc file manager
ranger                            # Use ranger file manager
nnn                               # Use nnn file manager
vifm                              # Use vifm file manager
```
