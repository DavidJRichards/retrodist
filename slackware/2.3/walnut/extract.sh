mount_copy $ORIGDIR/disc1.iso . \
    bootdsks.144/idecd \
    rootdsks.144/color144
mv idecd boot.img
mv color144 root.img
truncate -s 1440k boot.img root.img