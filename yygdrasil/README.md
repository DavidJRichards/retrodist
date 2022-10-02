# Yygdrasil notes

The 1995-fall distribution of Yygdrasil has an ATAPI cdrom driver, however before attempting to use it the boot process will try to find a sound blaster type of cdrom at various addresses, this takes a while and can be circumvented with the sbpcd=0 on the lilo command line. An alternative is to edit the default lilo command line in the floppy disk image.

## mounting floppy disk image

A loopback driver can be used to mount the floppy disk image for editing

```sudo mount -o loop /home/david/Github/retrodist/yygdrasil/1995-fall/djrm/.cache/boot.img /media/david/floppy1```

On the Yygdrasil distribution the change is made in the SYSLINUX.CFG file in the root of the floppy disk

```
default linux sbpcd=0
timeout 60
display bootmsg.txt
prompt 1
append rw root=0x0101 ramdisk=1440
f1 help1.txt
f2 help2.txt
f3 help3.txt
f4 help4.txt
f5 help5.txt
f8 bootmsg.txt
```

And unmounting when finished editing

```sudo umount /media/david/floppy1```
 
