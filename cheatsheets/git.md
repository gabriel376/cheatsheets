# Git Cheat Sheet

## Configure
```Shell
git config --global user.name [name]        # set user name for current user
git config --global user.email [email]      # set email address for current user
git config --system core.editor [editor]    # set preferred editor
```

## Start
```Shell
git init           # create an empty repository
git init --bare    # create an empty bare repository

git clone [url]    # clone repository
```

## Modify
```Shell
git add [file]           # stage file changes to next commit
git add --all            # stage all file changes to next commit

git checkout [file]      # discard file changes
git reset HEAD [file]    # remove file from staging area
git reset --hard HEAD    # reset working tree
```

## Stash
```Shell
git stash          # store file changes in stash and revert changes
git stash list     # list stash
git stash show     # show files in stash
git stash pop      # apply files and remove from stash
git stash drop     # do not apply files and remove from stash
git stash clear    # clear all stash
```

## View
```Shell
git status                    # show new, modified and deleted files

git diff                      # show all file changes
git diff [file]               # show file changes
git diff --staged             # show file changes in staging area
git diff [commit] [commit]    # show changes between commits

git log                       # show commit history
git log -p [file]             # show file commit history

git show [commit]             # show commit information

git blame [file]              # show last commit for each line of file
```

## Branch
```Shell
git branch                # list local branches
git branch -av            # list all branches

git branch [name]         # create new branch
git branch -d [branch]    # delete branch

git checkout [branch]     # switch to branch
git checkout [commit]     # switch to commit
```

## Commit
```Shell
git commit                 # commit changes
git commit -m [message]    # commit changes and set message

git revert [commit]        # revert commit
```

## Tag
```Shell
git tag            # show tags
git tag [tag]      # set a tag for current commit
git push --tags    # push tags to repository
```

## Sync
```Shell
git remote -v                   # list remote repositories
git remote add [alias] [url]    # add remote repository
git remote rm [alias]           # remove remote repository

git fetch [remote]              # get changes from remote repository
git pull [remote] [branch]      # get remote changes and update HEAD

git merge [branch]              # merge branch into current branch
git rebase [branch]             # apply commits from branch into this branch

git push [remote] [branch]      # send changes to remote repository
git push --tags                 # send tags to remote repository
```
