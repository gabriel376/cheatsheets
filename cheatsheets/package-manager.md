# Package Manager Cheat Sheet

## dpkg
```Shell
dpkg -i [path]            # install .deb package
dpkg -r [package]         # remove package and keep configuration files
dpkg --purge [package]    # remove package and configuration files

dpkg -l                   # list installed packages
dpkg -L [package]         # list package files
dpkg --contents [path]    # list .deb files

dpkg -s [package]         # show package information
dpkg -I [path]            # show .deb package information
dpkg -S [path]            # show which package owns the file
```

## apt-get
```Shell
apt-get update                 # synchronize package index
apt-get install [package]      # install package
apt-get upgrade                # upgrade all installed packages
apt-get remove [package]       # remove package and keep configuration files
apt-get purge [package]        # remove package and configuration files

apt-cache pkgnames             # show available packages
apt-cache search [package]     # search package
apt-cache show [package]       # show package information
apt-cache depends [package]    # list package dependencies
```

## rpm
```Shell
rpm -ihv [path]       # install .rpm package
rpm -Uhv [path]       # update .rpm package
rpm -ev [package]     # remove package

rpm -qR [package]     # list package dependencies
rpm -qRp [path]       # list .rpm dependencies

rpm -qa               # list all installed packages
rpm -qi [package]     # show package information
rpm -qf [path]        # show which package owns the file
rpm -qc [package]     # show package configuration files
```

## yum
```Shell
yum makecache                # refresh package metadata
yum install [package]        # install package
yum update                   # update all installed packages
yum update [package]         # update installed package
yum remove [package]         # remove package

yum list installed           # list all installed packages
yum list available           # list all available packages
yum list kernel              # list installed and available kernel packages

yum info [package]           # show package information
yum deplist [package]        # list package dependencies
yum provides [file]          # find packages that provide the file
yum search [name]            # search packages

yum history                  # list yum transactions
yum history info [number]    # show details of yum transaction
yum history undo [number]    # undo yum transaction
yum history redo [number]    # redo yum transaction
```

## dnf
```Shell
dnf makecache                # refresh package metadata
dnf install [package]        # install package
dnf update                   # update all installed packages
dnf update [package]         # update installed package
dnf remove [package]         # remove package

dnf list installed           # list all installed packages
dnf list available           # list all available packages
dnf list kernel              # list installed and available kernel packages

dnf info [package]           # show package information
dnf deplist [package]        # list package dependencies
dnf provides [file]          # find packages that provide the file
dnf search [name]            # search packages

dnf history                  # list yum transactions
dnf history info [number]    # show details of yum transaction
dnf history undo [number]    # undo yum transaction
dnf history redo [number]    # redo yum transaction
```

## pacman
```Shell
pacman -Syu              # synchronize package index and upgrade all packages
pacman -Syu [package]    # synchronize package index, upgrade all packages and install package
pacman -S [package]      # install package
pacman -Rsc [package]    # remove package

pacman -Qe               # list installed packages
pacman -Ql [package]     # list package files
pacman -Qii [package]    # show package information
pacman -Qo [path]        # show which package owns the file
pacman -Ss [package]     # search package
```

## xbps
```Shell
xbps-install -S              # synchronize package index
xbps-install -Su             # synchronize package index and update system
xbps-install -S [package]    # synchronize package index and install package

xbps-remove [package]        # remove package
xbps-remove -R [package]     # remove package and all unused dependencies
xbps-remove -o               # remove all package orphans

xbps-query -L                # list repositories and number of available packages
xbps-query -l                # list installed packages
xbps-query -Rs [package]     # search packages
xbps-query -RS [package]     # show package information
xbps-query -Rx [package]     # list package dependencies
xbps-query -RX [package]     # list package reverse dependencies
```

## prt-get
```Shell
prt-get list                     # list available packages
prt-get listinst                 # list installed packages
prt-get listorphans              # list orphans packages

prt-get install [package]        # install package
prt-get depinst [package]        # install package with dependencies
prt-get grpinst [package]        # install package, stop if error

prt-get diff                     # show available updates
prt-get update [package]         # update package
prt-get sysup                    # update all packages

prt-get lock [package]           # lock package version
prt-get listlocked               # list locked packages

prt-get search [package]         # seach package
prt-get dsearch [package]        # seach package in name and description
prt-get fsearch [path]           # seach path in footprint

prt-get info [package]           # show package information
prt-get path [package]           # show package path
prt-get readme [package]         # show package readme

prt-get depends [package]        # show package dependencies
prt-get deptree [package]        # show package dependencies tree
prt-get depedent [package]       # show package reverse dependencies

prt-get ls [package]             # list package directory
prt-get cat [package] [path]     # cat package file
prt-get edit [package] [path]    # edit package file

prt-get remove [package]         # remove package
```
