#!/bin/sh

# manual cludge part ...

#mount -t msdos /dev/hdb1 /mnt

#/mnt/autoinst.d/inststep/01.sh 

INSTMOUNT=/mnt
export INSTMOUNT

ROOTMOUNT=/mnt2
export ROOTMOUNT


. /mnt/autoinst.d/config.sh
. /mnt/autoinst.d/inststep/02.sh

