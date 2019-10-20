# Bash Cheat Sheet

## Redirection
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
