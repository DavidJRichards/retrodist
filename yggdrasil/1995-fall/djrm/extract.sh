7z x $ORIGDIR/disc1.iso \
    bootflop.3in > /dev/null
mv bootflop.3in boot.img
sudo mount -o loop /home/david/Github/retrodist/yggdrasil/1995-fall/djrm/.cache/boot.img /media/david/floppy1
sudo sed -i 's/default linux/default linux sbpcd=0/g' /media/david/floppy1/SYSLINUX.CFG
sudo umount /media/david/floppy1
autoinst_prep 500M
