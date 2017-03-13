AllWinner a31 DIGMA iDsQ8

TWRP touch recovery
-------------

TWRP recovery - device: 


Flash CWM or TWRP
---------

Run following commands

adb push recovery.img /sdcard/

adb shell "cat /mnt/sdcard/recovery.img > /dev/block/nandg; sync"
