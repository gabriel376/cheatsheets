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
dpkg -S [path]            # show which package owns a file
```

## apt-get
```Shell
apt-get update                # update package database
apt-get install [package]     # install package
apt-get upgrade               # upgrade all installed packages
apt-get remove [package]      # remove package and keep configuration files
apt-get purge [package]       # remove package and configuration files

apt-cache pkgnames            # show available packages
apt-cache search [package]    # search package
apt-cache show [package]      # show package information
```

## rpm
```Shell

```

## yum
```Shell

```

## dnf
```Shell

```

## pacman
```Shell

```
