# VirtualBox Cheat Sheet

## Virtual Machine
```Shell
VBoxManage createvm     \            # create vm
    --name [name]       \            # vm name
    --ostype [type]     \            # operating system type
    --basefolder [path] \            # vm directory path
    --default           \            # default hardware configuration
    --register                       # register vm

VBoxManage modifyvm             \    # modify vm
    [name]                      \    # vm name
    --description [text]        \    # vm description
    --name [name]               \    # rename vm
    --ostype [type]             \    # operating system type
    --memory [size]             \    # memory size in megabytes
    --vram [size]               \    # graphics memory size in megabytes
    --graphicscontroller [type] \    # graphics controller |none|vboxvga|vmsvga|vboxsvga|
    --ioapic [on|off]           \    # enable or disable ACPI
    --boot[1-4] [type]          \    # boot order |none|floppy|dvd|disk|net|
    --cpus [number]             \    # number of CPUs
    --snapshotfolder [path]     \    # snapshots folder
    --clipboard [type]          \    # clipboard type |disabled|hosttoguest|guesttohost|bidirectional]
    --draganddrop [type]        \    # drag and drop type |disabled|hosttoguest|guesttohost|bidirectional]
    --firmware [type]                # firmware type |bios|efi|efi32|efi64|

VBoxManage showvminfo \              # show vm info
    [name]                           # vm name

VBoxManage unregistervm \            # unregister vm
    [name]              \            # vm name
    --delete                         # delete all vm files
```

## Control Virtual Machine
```Shell
VBoxManage startvm \      # start vm
    [name]         \      # vm name
    --type [type]         # start mode |gui|headless|

VBoxManage controlvm \    # control vm
    [name]           \    # vm name
    [command]             # command |pause|resume|reset|poweroff|
```

## Snapshot
```Shell
VBoxManage snapshot \       # vm snapshot
    [name]          \       # vm name
    take [name]     \       # take snapshot
    --description [text]    # snapshot description

VBoxManage snapshot \       # vm snapshot
    [name]          \       # vm name
    list                    # list snapshots

VBoxManage snapshot \       # vm snapshot
    [name]          \       # vm name
    restore [name]          # restore snapshot

VBoxManage snapshot \       # vm snapshot
    [name]          \       # vm name
    restorecurrent          # restore current snapshot

VBoxManage snapshot \       # vm snapshot
    [name]          \       # vm name
    delete [name]           # delete snapshot
```

## Move Virtual Machine
```Shell
VBoxManage clonevm      \    # clone vm
    [name]              \    # vm name
    --name [name]       \    # cloned vm name
    --basefolder [path] \    # vm directory path
    --mode [mode]       \    # clone mode |machine|machineandchildren|all|
    --register               # register cloned vm

VBoxManage movevm   \        # move vm
    [name]          \        # vm name
    --folder [path] \        # vm directory path
    --type [type]            # move type |basic|

VBoxManage export \          # export vm
    [name]        \          # vm name
    --output [path]          # export path with extension |.ovf|

VBoxManage import \          # import vm
    [path]                   # import path with extension |.ovf|
```

## Medium
```Shell
VBoxManage createmedium \    # create medium
    --filename [path]   \    # medium path
    --size [size]       \    # medium size in megabytes
    --format [format]        # medium format |VDI|VMDK|VHD|

VBoxManage closemedium \     # delete medium
    [type]             \     # medium type |disk|dvd|floppy|
    [path]             \     # medium path
    --delete                 # delete medium file
```

## Storage
```Shell
VBoxManage storagectl \       # storage controller
    [name]            \       # vm name
    --name [name]     \       # storage controler name
    --add [type]      \       # add system bus type |SATA|IDE|
    --bootable                # is bootable

VBoxManage storagectl \       # storage controller
    [name]            \       # vm name
    --name [name]     \       # storage controller name
    --remove                  # remove storage controller

VBoxManage storageattach \    # attach medium to storage controller
    [name]               \    # vm name
    --storagectl [name]  \    # storage controller name
    --port [number]      \    # storage controler port
    --device [number]    \    # device port
    --type [type]        \    # medium type (hd or dvddrive)
    --medium [path]           # medium path
```
